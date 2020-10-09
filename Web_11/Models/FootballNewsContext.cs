using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Web_11.Models.data
{
    public partial class FootballNewsContext : DbContext
    {
        public FootballNewsContext()
        {
        }

        public FootballNewsContext(DbContextOptions<FootballNewsContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Banthang> Banthang { get; set; }
        public virtual DbSet<Cauthu> Cauthu { get; set; }
        public virtual DbSet<Cthd> Cthd { get; set; }
        public virtual DbSet<Doibong> Doibong { get; set; }
        public virtual DbSet<Hashtag> Hashtag { get; set; }
        public virtual DbSet<Hinhanh> Hinhanh { get; set; }
        public virtual DbSet<HinhanhQc> HinhanhQc { get; set; }
        public virtual DbSet<Hoadon> Hoadon { get; set; }
        public virtual DbSet<Khachhang> Khachhang { get; set; }
        public virtual DbSet<Loaithanhtich> Loaithanhtich { get; set; }
        public virtual DbSet<Loaive> Loaive { get; set; }
        public virtual DbSet<Noidung> Noidung { get; set; }
        public virtual DbSet<SubCauthu> SubCauthu { get; set; }
        public virtual DbSet<SubTaitro> SubTaitro { get; set; }
        public virtual DbSet<SubTintuc> SubTintuc { get; set; }
        public virtual DbSet<Taitro> Taitro { get; set; }
        public virtual DbSet<TbUser> TbUser { get; set; }
        public virtual DbSet<Thanhtich> Thanhtich { get; set; }
        public virtual DbSet<Thongtincoban> Thongtincoban { get; set; }
        public virtual DbSet<Ticket> Ticket { get; set; }
        public virtual DbSet<Tintuc> Tintuc { get; set; }
        public virtual DbSet<Trandau> Trandau { get; set; }
        public virtual DbSet<Video> Video { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=LONGPC;Database=FootballNews;User Id=admin;Password=admin;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Banthang>(entity =>
            {
                entity.HasKey(e => e.IdBanThang)
                    .HasName("PK__BANTHANG__7FEA4928A46D6D11");

                entity.ToTable("BANTHANG");

                entity.Property(e => e.IdBanThang)
                    .HasColumnName("ID_BanThang")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdCauThu)
                    .IsRequired()
                    .HasColumnName("ID_CauThu")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdTranDau)
                    .IsRequired()
                    .HasColumnName("ID_TranDau")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.ThoiDiem).HasColumnType("datetime");

                entity.HasOne(d => d.IdCauThuNavigation)
                    .WithMany(p => p.Banthang)
                    .HasForeignKey(d => d.IdCauThu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__BANTHANG__ID_Cau__4E88ABD4");

                entity.HasOne(d => d.IdTranDauNavigation)
                    .WithMany(p => p.Banthang)
                    .HasForeignKey(d => d.IdTranDau)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__BANTHANG__ID_Tra__4F7CD00D");
            });

            modelBuilder.Entity<Cauthu>(entity =>
            {
                entity.HasKey(e => e.IdCauThu)
                    .HasName("PK__CAUTHU__C790527D581632C5");

                entity.ToTable("CAUTHU");

                entity.Property(e => e.IdCauThu)
                    .HasColumnName("ID_CauThu")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SourceHact)
                    .HasColumnName("Source_HACT")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.TenCauThu).HasMaxLength(50);
            });

            modelBuilder.Entity<Cthd>(entity =>
            {
                entity.HasKey(e => new { e.IdHoaDon, e.IdVe })
                    .HasName("CTHD_pk");

                entity.ToTable("CTHD");

                entity.Property(e => e.IdHoaDon)
                    .HasColumnName("ID_HoaDon")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdVe)
                    .HasColumnName("ID_Ve")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdHoaDonNavigation)
                    .WithMany(p => p.Cthd)
                    .HasForeignKey(d => d.IdHoaDon)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__CTHD__ID_HoaDon__5FB337D6");

                entity.HasOne(d => d.IdVeNavigation)
                    .WithMany(p => p.Cthd)
                    .HasForeignKey(d => d.IdVe)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__CTHD__ID_Ve__60A75C0F");
            });

            modelBuilder.Entity<Doibong>(entity =>
            {
                entity.HasKey(e => e.IdDoiBong)
                    .HasName("PK__DOIBONG__38B75167F342358E");

                entity.ToTable("DOIBONG");

                entity.Property(e => e.IdDoiBong)
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SourceBanner)
                    .HasColumnName("Source_Banner")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.SourceLogo)
                    .HasColumnName("Source_Logo")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.Property(e => e.TenDoi)
                    .IsRequired()
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Hashtag>(entity =>
            {
                entity.HasKey(e => e.IdHashtag)
                    .HasName("PK__HASHTAG__4E71A0E9959766E6");

                entity.ToTable("HASHTAG");

                entity.Property(e => e.IdHashtag).HasColumnName("ID_Hashtag");

                entity.Property(e => e.Hashtag1)
                    .HasColumnName("Hashtag")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Hinhanh>(entity =>
            {
                entity.HasKey(e => e.IdHinhAnh)
                    .HasName("PK__HINHANH__17EE7076E97EAAEC");

                entity.ToTable("HINHANH");

                entity.Property(e => e.IdHinhAnh).HasColumnName("ID_HinhAnh");

                entity.Property(e => e.SourceHinhAnh)
                    .HasColumnName("Source_HinhAnh")
                    .HasMaxLength(2000)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<HinhanhQc>(entity =>
            {
                entity.HasKey(e => e.IdHaQc)
                    .HasName("PK__HINHANH___B501A2751AAD23CB");

                entity.ToTable("HINHANH_QC");

                entity.Property(e => e.IdHaQc).HasColumnName("ID_HA_QC");

                entity.Property(e => e.SourceHinhAnhQc)
                    .HasColumnName("Source_HinhAnh_QC")
                    .HasMaxLength(2000)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Hoadon>(entity =>
            {
                entity.HasKey(e => e.IdHoaDon)
                    .HasName("PK__HOADON__14AFCFC5782DF774");

                entity.ToTable("HOADON");

                entity.Property(e => e.IdHoaDon)
                    .HasColumnName("ID_HoaDon")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdKhachHang)
                    .IsRequired()
                    .HasColumnName("ID_KhachHang")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.ThoiGian).HasColumnType("datetime");

                entity.HasOne(d => d.IdKhachHangNavigation)
                    .WithMany(p => p.Hoadon)
                    .HasForeignKey(d => d.IdKhachHang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__HOADON__ID_Khach__5629CD9C");
            });

            modelBuilder.Entity<Khachhang>(entity =>
            {
                entity.HasKey(e => e.IdKhachHang)
                    .HasName("PK__KHACHHAN__263C4E858A4C8E00");

                entity.ToTable("KHACHHANG");

                entity.Property(e => e.IdKhachHang)
                    .HasColumnName("ID_KhachHang")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DiaChi).HasMaxLength(100);

                entity.Property(e => e.HoTen).HasMaxLength(50);

                entity.Property(e => e.Sdt)
                    .HasColumnName("SDT")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Loaithanhtich>(entity =>
            {
                entity.HasKey(e => e.IdLoaiThanhTich)
                    .HasName("PK__LOAITHAN__5129CA256C113C2B");

                entity.ToTable("LOAITHANHTICH");

                entity.Property(e => e.IdLoaiThanhTich)
                    .HasColumnName("ID_LoaiThanhTich")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TenLoaiThanhTich).HasMaxLength(50);
            });

            modelBuilder.Entity<Loaive>(entity =>
            {
                entity.HasKey(e => e.IdLoaiVe)
                    .HasName("PK__LOAIVE__D746A2FF4E843701");

                entity.ToTable("LOAIVE");

                entity.Property(e => e.IdLoaiVe)
                    .HasColumnName("ID_LoaiVe")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TenLoaiVe).HasMaxLength(50);
            });

            modelBuilder.Entity<Noidung>(entity =>
            {
                entity.HasKey(e => e.IdNoiDung)
                    .HasName("PK__NOIDUNG__E4A7B60779875F0C");

                entity.ToTable("NOIDUNG");

                entity.Property(e => e.IdNoiDung).HasColumnName("ID_NoiDung");

                entity.Property(e => e.TextNoiDung).HasColumnName("Text_NoiDung");
            });

            modelBuilder.Entity<SubCauthu>(entity =>
            {
                entity.HasKey(e => e.IdSubCt)
                    .HasName("PK__sub_CAUT__1CD2B8384EE54381");

                entity.ToTable("sub_CAUTHU");

                entity.Property(e => e.IdSubCt).HasColumnName("ID_sub_CT");

                entity.Property(e => e.IdCauThu)
                    .IsRequired()
                    .HasColumnName("ID_CauThu")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdDoiBong)
                    .IsRequired()
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdCauThuNavigation)
                    .WithMany(p => p.SubCauthu)
                    .HasForeignKey(d => d.IdCauThu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_CAUTH__ID_Ca__47DBAE45");

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.SubCauthu)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_CAUTH__ID_Do__46E78A0C");
            });

            modelBuilder.Entity<SubTaitro>(entity =>
            {
                entity.HasKey(e => e.IdSubTt)
                    .HasName("PK__sub_TAIT__F422BD2EB482ECF8");

                entity.ToTable("sub_TAITRO");

                entity.Property(e => e.IdSubTt).HasColumnName("ID_Sub_TT");

                entity.Property(e => e.IdDoiBong)
                    .IsRequired()
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdTaiTro)
                    .IsRequired()
                    .HasColumnName("ID_TaiTro")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.SubTaitro)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TAITR__ID_Do__412EB0B6");

                entity.HasOne(d => d.IdTaiTroNavigation)
                    .WithMany(p => p.SubTaitro)
                    .HasForeignKey(d => d.IdTaiTro)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TAITR__ID_Ta__4222D4EF");
            });

            modelBuilder.Entity<SubTintuc>(entity =>
            {
                entity.HasKey(e => e.IdSubTt)
                    .HasName("PK__sub_TINT__1CD40A5DBA497F1A");

                entity.ToTable("sub_TINTUC");

                entity.Property(e => e.IdSubTt).HasColumnName("ID_sub_TT");

                entity.Property(e => e.IdHashtag).HasColumnName("ID_Hashtag");

                entity.Property(e => e.IdHinhAnh).HasColumnName("ID_HinhAnh");

                entity.Property(e => e.IdNoiDung).HasColumnName("ID_NoiDung");

                entity.Property(e => e.IdTintuc)
                    .HasColumnName("ID_Tintuc")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdHashtagNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdHashtag)
                    .HasConstraintName("FK__sub_TINTU__ID_Ha__31EC6D26");

                entity.HasOne(d => d.IdHinhAnhNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdHinhAnh)
                    .HasConstraintName("FK__sub_TINTU__ID_Hi__300424B4");

                entity.HasOne(d => d.IdNoiDungNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdNoiDung)
                    .HasConstraintName("FK__sub_TINTU__ID_No__30F848ED");

                entity.HasOne(d => d.IdTintucNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdTintuc)
                    .HasConstraintName("FK__sub_TINTU__ID_Ti__2F10007B");
            });

            modelBuilder.Entity<Taitro>(entity =>
            {
                entity.HasKey(e => e.IdTaiTro)
                    .HasName("PK__TAITRO__7411763C5E001158");

                entity.ToTable("TAITRO");

                entity.Property(e => e.IdTaiTro)
                    .HasColumnName("ID_TaiTro")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SourceLogo)
                    .HasColumnName("Source_Logo")
                    .HasMaxLength(2000)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TbUser>(entity =>
            {
                entity.HasKey(e => e.IdUser)
                    .HasName("PK__tb_USER__ED4DE4422E9BA401");

                entity.ToTable("tb_USER");

                entity.Property(e => e.IdUser)
                    .HasColumnName("ID_User")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.Email)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.HoTen).HasMaxLength(50);

                entity.Property(e => e.MatKhau)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Sdt)
                    .HasColumnName("SDT")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TaiKhoan)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Thanhtich>(entity =>
            {
                entity.HasKey(e => e.IdThanhTich)
                    .HasName("PK__THANHTIC__A7B7F3837CEFFA27");

                entity.ToTable("THANHTICH");

                entity.Property(e => e.IdThanhTich)
                    .HasColumnName("ID_ThanhTich")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdDoiBong)
                    .IsRequired()
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdLoaiThanhTich)
                    .IsRequired()
                    .HasColumnName("ID_LoaiThanhTich")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TenThanhTich).HasMaxLength(100);

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.Thanhtich)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__THANHTICH__ID_Do__3C69FB99");

                entity.HasOne(d => d.IdLoaiThanhTichNavigation)
                    .WithMany(p => p.Thanhtich)
                    .HasForeignKey(d => d.IdLoaiThanhTich)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__THANHTICH__ID_Lo__3B75D760");
            });

            modelBuilder.Entity<Thongtincoban>(entity =>
            {
                entity.HasKey(e => e.IdThongTin)
                    .HasName("PK__THONGTIN__BB9645AF60AB1606");

                entity.ToTable("THONGTINCOBAN");

                entity.Property(e => e.IdThongTin)
                    .HasColumnName("ID_ThongTin")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.ChuTichClb)
                    .HasColumnName("ChuTichCLB")
                    .HasMaxLength(50);

                entity.Property(e => e.DiaChi).HasMaxLength(1000);

                entity.Property(e => e.Email)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Gđdh)
                    .HasColumnName("GĐDH")
                    .HasMaxLength(50);

                entity.Property(e => e.Gđkt)
                    .HasColumnName("GĐKT")
                    .HasMaxLength(50);

                entity.Property(e => e.Hlvtruong)
                    .HasColumnName("HLVTruong")
                    .HasMaxLength(50);

                entity.Property(e => e.Hotline)
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdDoiBong)
                    .IsRequired()
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.NhaTaiTro).HasMaxLength(50);

                entity.Property(e => e.SanVanDong).HasMaxLength(20);

                entity.Property(e => e.Website)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.Thongtincoban)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__THONGTINC__ID_Do__36B12243");
            });

            modelBuilder.Entity<Ticket>(entity =>
            {
                entity.HasKey(e => e.IdVe)
                    .HasName("PK__TICKET__8B63A19CE04CCD27");

                entity.ToTable("TICKET");

                entity.Property(e => e.IdVe)
                    .HasColumnName("ID_Ve")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DoiKhach)
                    .IsRequired()
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DoiNha)
                    .IsRequired()
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdLoaiVe)
                    .IsRequired()
                    .HasColumnName("ID_LoaiVe")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.ThoiGianBatDau).HasColumnType("datetime");

                entity.HasOne(d => d.DoiKhachNavigation)
                    .WithMany(p => p.TicketDoiKhachNavigation)
                    .HasForeignKey(d => d.DoiKhach)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TICKET__DoiKhach__5CD6CB2B");

                entity.HasOne(d => d.DoiNhaNavigation)
                    .WithMany(p => p.TicketDoiNhaNavigation)
                    .HasForeignKey(d => d.DoiNha)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TICKET__DoiNha__5BE2A6F2");

                entity.HasOne(d => d.IdLoaiVeNavigation)
                    .WithMany(p => p.Ticket)
                    .HasForeignKey(d => d.IdLoaiVe)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TICKET__ID_LoaiV__5AEE82B9");
            });

            modelBuilder.Entity<Tintuc>(entity =>
            {
                entity.HasKey(e => e.IdTinTuc)
                    .HasName("PK__TINTUC__D3B238FEAF07A8E3");

                entity.ToTable("TINTUC");

                entity.Property(e => e.IdTinTuc)
                    .HasColumnName("ID_TinTuc")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.Avatar)
                    .HasMaxLength(2000)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('No picture')");

                entity.Property(e => e.TieuDe).HasDefaultValueSql("(N'No title')");

                entity.Property(e => e.TrangThaiHienThi)
                    .HasMaxLength(20)
                    .HasDefaultValueSql("(N'Hiển thị')");
            });

            modelBuilder.Entity<Trandau>(entity =>
            {
                entity.HasKey(e => e.IdTranDau)
                    .HasName("PK__TRANDAU__4DCE68F429F7C7AC");

                entity.ToTable("TRANDAU");

                entity.Property(e => e.IdTranDau)
                    .HasColumnName("ID_TranDau")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DoiKhach)
                    .IsRequired()
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DoiNha)
                    .IsRequired()
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SanThiDau).HasMaxLength(20);

                entity.Property(e => e.ThoiGianThiDau).HasColumnType("datetime");

                entity.Property(e => e.TiSo)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.HasOne(d => d.DoiKhachNavigation)
                    .WithMany(p => p.TrandauDoiKhachNavigation)
                    .HasForeignKey(d => d.DoiKhach)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TRANDAU__DoiKhac__4BAC3F29");

                entity.HasOne(d => d.DoiNhaNavigation)
                    .WithMany(p => p.TrandauDoiNhaNavigation)
                    .HasForeignKey(d => d.DoiNha)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TRANDAU__DoiNha__4AB81AF0");
            });

            modelBuilder.Entity<Video>(entity =>
            {
                entity.HasKey(e => e.IdVideo)
                    .HasName("PK__VIDEO__161E882033F076C7");

                entity.ToTable("VIDEO");

                entity.Property(e => e.IdVideo).HasColumnName("ID_VIDEO");

                entity.Property(e => e.SourceVideo)
                    .HasColumnName("Source_VIDEO")
                    .HasMaxLength(2000)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
