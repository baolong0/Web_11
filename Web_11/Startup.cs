﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Data;
using Web_11.Identity;
using Web_11.Mail;
using Web_11.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Routing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Web_11.Models.data;

namespace Web_11
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Đăng ký AppDbContext
            services.AddDbContext<AppDbContext>(options =>
            {
                // Đọc chuỗi kết nối
                string connectstring = Configuration.GetConnectionString("AppDbContext");
                // Sử dụng MS SQL Server
                options.UseSqlServer(connectstring);
            });

            services.AddIdentity<AppUser, IdentityRole>()
                .AddEntityFrameworkStores<AppDbContext>()
                .AddDefaultTokenProviders();
            // Truy cập IdentityOptions
            services.Configure<IdentityOptions>(options =>
            {
                // Thiết lập về Password
                options.Password.RequireDigit = false; // Không bắt phải có số
                options.Password.RequireLowercase = false; // Không bắt phải có chữ thường
                options.Password.RequireNonAlphanumeric = false; // Không bắt ký tự đặc biệt
                options.Password.RequireUppercase = false; // Không bắt buộc chữ in
                options.Password.RequiredLength = 3; // Số ký tự tối thiểu của password
                options.Password.RequiredUniqueChars = 1; // Số ký tự riêng biệt

                // Cấu hình Lockout - khóa user
                options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(5); // Khóa 5 phút
                options.Lockout.MaxFailedAccessAttempts = 5; // Thất bại 5 lầ thì khóa
                options.Lockout.AllowedForNewUsers = true;

                // Cấu hình về User.
                options.User.AllowedUserNameCharacters = // các ký tự đặt tên user
                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                options.User.RequireUniqueEmail = true;  // Email là duy nhất

                // Cấu hình đăng nhập.
                options.SignIn.RequireConfirmedEmail = true;            // Cấu hình xác thực địa chỉ email (email phải tồn tại)
                options.SignIn.RequireConfirmedPhoneNumber = false;     // Xác thực số điện thoại

            });
            services.Configure<RouteOptions>(options =>
            {
                options.LowercaseUrls = true; // url chữ thường
                options.LowercaseQueryStrings = false; // không bắt query trong url phải in thường
            });

            services.ConfigureApplicationCookie(options =>
            {
                // options.Cookie.HttpOnly = true;  
                options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
                options.LoginPath = $"/login/";
                options.LogoutPath = $"/logout/";
                options.AccessDeniedPath = $"/Identity/Account/AccessDenied";
            });
            services.Configure<SecurityStampValidatorOptions>(options =>
            {
                // Trên 30 giây truy cập lại sẽ nạp lại thông tin User (Role)
                // SecurityStamp trong bảng User đổi -> nạp lại thông tinn Security
                options.ValidationInterval = TimeSpan.FromSeconds(5);
            });
            services.AddAuthorization(options =>
            {
                options.AddPolicy("MinimumAge", policy =>
                {
                    policy.Requirements.Add(new MinimumAgeRequirement(18)
                    {
                        OpenTime = 8,
                        CloseTime = 22
                    });
                });

                options.AddPolicy("AdminDropdown", policy =>
                {
                    policy.RequireClaim("permission", "manage.user");
                });


                options.AddPolicy("MyPolicy1", policy =>
                {
                    policy.RequireRole("Vip");
                });

                options.AddPolicy("CanViewTest", policy =>
                {
                    policy.RequireRole("VipMember", "Editor");
                });


                options.AddPolicy("CanView", policy =>
                {
                    // policy.RequireRole("Editor");
                    policy.RequireClaim("permision", "post.view");
                });


            });
            services.AddDistributedMemoryCache();           // Đăng ký dịch vụ lưu cache trong bộ nhớ (Session sẽ sử dụng nó)
            services.AddSession(cfg =>
            {                    // Đăng ký dịch vụ Session
                cfg.Cookie.Name = "STFootballNews";             // Đặt tên Session - tên này sử dụng ở Browser (Cookie)
                cfg.IdleTimeout = new TimeSpan(0, 30, 0);    // Thời gian tồn tại của Session
            });
            services.AddTransient<IAuthorizationHandler, MinimumAgeHandler>();
            services.AddTransient<IAuthorizationHandler, CanUpdatePostAgeHandler>();
            services.AddDbContext<FootballNewsContext>(options => options.UseSqlServer(Configuration.GetConnectionString("Web_11Context")));
            services.AddOptions();                                        // Kích hoạt Options
            var mailsettings = Configuration.GetSection("MailSettings");  // đọc config
            services.Configure<MailSettings>(mailsettings);               // đăng ký để Inject

            services.AddTransient<IEmailSender, SendMailService>();        // Đăng ký dịch vụ Mail          
            services.AddControllersWithViews();
            services.AddRazorPages();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseSession();
            app.UseRouting();
            app.UseAuthentication();   // Phục hồi thông tin đăng nhập (xác thực)
            app.UseAuthorization();   // Phục hồi thông tinn về quyền của User
            app.UseEndpoints(endpoints =>
            {

                endpoints.MapControllerRoute(
                name: "MyArea",
                pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

                endpoints.MapControllerRoute(
                    name: "default",

                    pattern: "{controller=TrangChu}/{action=Index}/{id?}");
            });
            //app.UseEndpoints(endpoints =>
            //{
            //    endpoints.MapControllerRoute(
            //        name: "default",
            //        pattern: "{controller=Home}/{action=Index}/{id?}");
            //});

        }
    }
}
