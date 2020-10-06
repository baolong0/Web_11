using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Web_11.Models
{
    public partial class FootballNewsContext : DbContext
    {
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
        public virtual DbSet<Hoadon> Hoadon { get; set; }
        public virtual DbSet<Khachhang> Khachhang { get; set; }
        public virtual DbSet<Loaihinhanh> Loaihinhanh { get; set; }
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

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=LONGPC;Database=FootballNews;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Banthang>(entity =>
            {
                entity.HasKey(e => e.IdBanThang)
                    .HasName("PK__BANTHANG__7FEA492835225476");

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
                    .HasConstraintName("FK__BANTHANG__ID_Cau__52593CB8");

                entity.HasOne(d => d.IdTranDauNavigation)
                    .WithMany(p => p.Banthang)
                    .HasForeignKey(d => d.IdTranDau)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__BANTHANG__ID_Tra__534D60F1");
            });

            modelBuilder.Entity<Cauthu>(entity =>
            {
                entity.HasKey(e => e.IdCauThu)
                    .HasName("PK__CAUTHU__C790527D9A63E94D");

                entity.ToTable("CAUTHU");

                entity.Property(e => e.IdCauThu)
                    .HasColumnName("ID_CauThu")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

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
                    .HasConstraintName("FK__CTHD__ID_HoaDon__6383C8BA");

                entity.HasOne(d => d.IdVeNavigation)
                    .WithMany(p => p.Cthd)
                    .HasForeignKey(d => d.IdVe)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__CTHD__ID_Ve__6477ECF3");
            });

            modelBuilder.Entity<Doibong>(entity =>
            {
                entity.HasKey(e => e.IdDoiBong)
                    .HasName("PK__DOIBONG__38B75167E0250F98");

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
                    .HasName("PK__HASHTAG__4E71A0E91D16ACF7");

                entity.ToTable("HASHTAG");

                entity.Property(e => e.IdHashtag)
                    .HasColumnName("ID_Hashtag")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.Hashtag1)
                    .HasColumnName("Hashtag")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Hinhanh>(entity =>
            {
                entity.HasKey(e => e.IdHinhAnh)
                    .HasName("PK__HINHANH__17EE707680DF578A");

                entity.ToTable("HINHANH");

                entity.Property(e => e.IdHinhAnh)
                    .HasColumnName("ID_HinhAnh")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdLoaiHinhAnh)
                    .IsRequired()
                    .HasColumnName("ID_LoaiHinhAnh")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SourceHinhAnh)
                    .HasColumnName("Source_HinhAnh")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdLoaiHinhAnhNavigation)
                    .WithMany(p => p.Hinhanh)
                    .HasForeignKey(d => d.IdLoaiHinhAnh)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__HINHANH__ID_Loai__2B3F6F97");
            });

            modelBuilder.Entity<Hoadon>(entity =>
            {
                entity.HasKey(e => e.IdHoaDon)
                    .HasName("PK__HOADON__14AFCFC5DF3C6BD9");

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
                    .HasConstraintName("FK__HOADON__ID_Khach__59FA5E80");
            });

            modelBuilder.Entity<Khachhang>(entity =>
            {
                entity.HasKey(e => e.IdKhachHang)
                    .HasName("PK__KHACHHAN__263C4E85E1F31694");

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

            modelBuilder.Entity<Loaihinhanh>(entity =>
            {
                entity.HasKey(e => e.IdLoaiHinhAnh)
                    .HasName("PK__LOAIHINH__0A2B7B249C029D46");

                entity.ToTable("LOAIHINHANH");

                entity.Property(e => e.IdLoaiHinhAnh)
                    .HasColumnName("ID_LoaiHinhAnh")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TenLoaiHinhAnh).HasMaxLength(50);
            });

            modelBuilder.Entity<Loaithanhtich>(entity =>
            {
                entity.HasKey(e => e.IdLoaiThanhTich)
                    .HasName("PK__LOAITHAN__5129CA25AC6A0F00");

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
                    .HasName("PK__LOAIVE__D746A2FF4F4966A1");

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
                    .HasName("PK__NOIDUNG__E4A7B607429872CF");

                entity.ToTable("NOIDUNG");

                entity.Property(e => e.IdNoiDung)
                    .HasColumnName("ID_NoiDung")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.TextNoiDung).HasColumnName("Text_NoiDung");
            });

            modelBuilder.Entity<SubCauthu>(entity =>
            {
                entity.HasKey(e => new { e.IdDoiBong, e.IdCauThu })
                    .HasName("sub_CAUTHU_pk");

                entity.ToTable("sub_CAUTHU");

                entity.Property(e => e.IdDoiBong)
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdCauThu)
                    .HasColumnName("ID_CauThu")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdCauThuNavigation)
                    .WithMany(p => p.SubCauthu)
                    .HasForeignKey(d => d.IdCauThu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_CAUTH__ID_Ca__4BAC3F29");

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.SubCauthu)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_CAUTH__ID_Do__4AB81AF0");
            });

            modelBuilder.Entity<SubTaitro>(entity =>
            {
                entity.HasKey(e => new { e.IdDoiBong, e.IdTaiTro })
                    .HasName("sub_TAITRO_pk");

                entity.ToTable("sub_TAITRO");

                entity.Property(e => e.IdDoiBong)
                    .HasColumnName("ID_DoiBong")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdTaiTro)
                    .HasColumnName("ID_TaiTro")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdDoiBongNavigation)
                    .WithMany(p => p.SubTaitro)
                    .HasForeignKey(d => d.IdDoiBong)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TAITR__ID_Do__44FF419A");

                entity.HasOne(d => d.IdTaiTroNavigation)
                    .WithMany(p => p.SubTaitro)
                    .HasForeignKey(d => d.IdTaiTro)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TAITR__ID_Ta__45F365D3");
            });

            modelBuilder.Entity<SubTintuc>(entity =>
            {
                entity.HasKey(e => new { e.IdTintuc, e.IdHinhAnh, e.IdNoiDung, e.IdHashtag })
                    .HasName("sub_TINTUC_pk");

                entity.ToTable("sub_TINTUC");

                entity.Property(e => e.IdTintuc)
                    .HasColumnName("ID_Tintuc")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdHinhAnh)
                    .HasColumnName("ID_HinhAnh")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdNoiDung)
                    .HasColumnName("ID_NoiDung")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdHashtag)
                    .HasColumnName("ID_Hashtag")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdHashtagNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdHashtag)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TINTU__ID_Ha__34C8D9D1");

                entity.HasOne(d => d.IdHinhAnhNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdHinhAnh)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TINTU__ID_Hi__32E0915F");

                entity.HasOne(d => d.IdNoiDungNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdNoiDung)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TINTU__ID_No__33D4B598");

                entity.HasOne(d => d.IdTintucNavigation)
                    .WithMany(p => p.SubTintuc)
                    .HasForeignKey(d => d.IdTintuc)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__sub_TINTU__ID_Ti__31EC6D26");
            });

            modelBuilder.Entity<Taitro>(entity =>
            {
                entity.HasKey(e => e.IdTaiTro)
                    .HasName("PK__TAITRO__7411763CF9F7F98E");

                entity.ToTable("TAITRO");

                entity.Property(e => e.IdTaiTro)
                    .HasColumnName("ID_TaiTro")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.IdLoaiHinhAnh)
                    .IsRequired()
                    .HasColumnName("ID_LoaiHinhAnh")
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.SourceLogo)
                    .HasColumnName("Source_Logo")
                    .HasMaxLength(2000)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdLoaiHinhAnhNavigation)
                    .WithMany(p => p.Taitro)
                    .HasForeignKey(d => d.IdLoaiHinhAnh)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TAITRO__ID_LoaiH__4222D4EF");
            });

            modelBuilder.Entity<TbUser>(entity =>
            {
                entity.HasKey(e => e.IdUser)
                    .HasName("PK__tb_USER__ED4DE4421757B6AB");

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
                    .HasName("PK__THANHTIC__A7B7F3831F05D51F");

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
                    .HasConstraintName("FK__THANHTICH__ID_Do__3F466844");

                entity.HasOne(d => d.IdLoaiThanhTichNavigation)
                    .WithMany(p => p.Thanhtich)
                    .HasForeignKey(d => d.IdLoaiThanhTich)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__THANHTICH__ID_Lo__3E52440B");
            });

            modelBuilder.Entity<Thongtincoban>(entity =>
            {
                entity.HasKey(e => e.IdThongTin)
                    .HasName("PK__THONGTIN__BB9645AF626F1EBA");

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
                    .HasConstraintName("FK__THONGTINC__ID_Do__398D8EEE");
            });

            modelBuilder.Entity<Ticket>(entity =>
            {
                entity.HasKey(e => e.IdVe)
                    .HasName("PK__TICKET__8B63A19C2A58DBA4");

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
                    .HasConstraintName("FK__TICKET__DoiKhach__60A75C0F");

                entity.HasOne(d => d.DoiNhaNavigation)
                    .WithMany(p => p.TicketDoiNhaNavigation)
                    .HasForeignKey(d => d.DoiNha)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TICKET__DoiNha__5FB337D6");

                entity.HasOne(d => d.IdLoaiVeNavigation)
                    .WithMany(p => p.Ticket)
                    .HasForeignKey(d => d.IdLoaiVe)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TICKET__ID_LoaiV__5EBF139D");
            });

            modelBuilder.Entity<Tintuc>(entity =>
            {
                entity.HasKey(e => e.IdTinTuc)
                    .HasName("PK__TINTUC__D3B238FE877E62CB");

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
                    .HasName("PK__TRANDAU__4DCE68F42A9B9527");

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
                    .HasConstraintName("FK__TRANDAU__DoiKhac__4F7CD00D");

                entity.HasOne(d => d.DoiNhaNavigation)
                    .WithMany(p => p.TrandauDoiNhaNavigation)
                    .HasForeignKey(d => d.DoiNha)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__TRANDAU__DoiNha__4E88ABD4");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
