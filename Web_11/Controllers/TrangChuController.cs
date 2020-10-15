using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models;
using Web_11.Models.data;

namespace Web_11.Controllers
{
    public class TrangChuController : Controller
    {
        private readonly FootballNewsContext _context;

        public TrangChuController(FootballNewsContext context)
        {
            _context = context;
        }
        public (string IDDoiBong, int? Diem)[] listbangxephang { get; set; }
        int?[] listDiem = new int?[100];
        public (string DoiBong, int? Diem)[] DiemXepHang { get; set; }
        public IList<ThongTinXepHang> thongTinXepHangs { get; set; }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio)[] listLTD { get; set; }

        private IList<Hashtag> Hashtags { get; set; }
        private Tintuc Tintucs { get; set; }
        public Video[] Video { get; private set; }
        private IList<Noidung> NoiDungs { get; set; }
        private IList<Hinhanh> Hinhanhs { get; set; }
        int?[] listIDnoiDung = new int?[100];
        int?[] listIDHinhAnh = new int?[100];
        int?[] listIDHashtag = new int?[100];
        public (string value, string display)[] NoiDungTin { get; set; }
        public (string value, string display)[] HashtagTin { get; set; }
        public (string value, string display)[] HinhAnhTin { get; set; }

        public async Task<IActionResult> Index()
        {
            TrangchuViewModel trangchuViewModel = new TrangchuViewModel();
            trangchuViewModel.Tintucs = _context.Tintuc.ToArray();
            trangchuViewModel.TintucHots= (from s in _context.Tintuc orderby s.LuotXem select s).Take(5).ToArray();
            trangchuViewModel.TintucTrongTuans= _context.Tintuc.ToArray();
            trangchuViewModel.listLTD = GetLTD();
            trangchuViewModel.listbangxephang = GetBangXepHang();
            trangchuViewModel.DiemXepHang = GetDiem();
            return View(trangchuViewModel);
        }
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            TinTucChiTietModel tinTucChiTietModel = new TinTucChiTietModel();
            tinTucChiTietModel.Tintucs = GetTintuc(id);
            tinTucChiTietModel.NoiDungTin = GetNoiDungTintuc(id);
            tinTucChiTietModel.HinhAnhTin = GetHinhAnhTintuc(id);
            tinTucChiTietModel.HashtagTin = GetHashTagTintuc(id);
            return View(tinTucChiTietModel);
        }

        public Tintuc GetTintuc(string id)
        {
            foreach (var item in _context.Tintuc)
            {
                if (item.IdTinTuc == id)
                {
                    Tintucs = item;
                }
            }
            return Tintucs;
        }
        public (string value, string display)[] GetNoiDungTintuc(string id)
        {
            int temp = 0;
           
            NoiDungs = _context.Noidung.ToArray();
            NoiDungTin = new (string value, string display)[100];
            foreach (var item in _context.SubTintuc)
            {
                if (item.IdTintuc == id & item.IdNoiDung != null)
                {
                    listIDnoiDung[temp] = item.IdNoiDung;
                    temp++;
                }
            }
            temp = 0;
            foreach (var item in NoiDungs)
            {
                if (item.IdNoiDung == listIDnoiDung[temp])
                {
                    NoiDungTin[temp] = (item.IdNoiDung.ToString(), item.TextNoiDung);
                    temp++;
                }
            }
            return NoiDungTin;
        }
        public (string value, string display)[] GetHinhAnhTintuc(string id)
        {
            int temp = 0;
            HinhAnhTin = new (string value, string display)[100];
           
            Hinhanhs = _context.Hinhanh.ToArray();
            foreach (var item in _context.SubTintuc)
            {
                if (item.IdTintuc == id & item.IdHinhAnh != null)
                {
                    listIDHinhAnh[temp] = item.IdHinhAnh;
                    temp++;
                }
            }

            temp = 0;
            foreach (var item in Hinhanhs)
            {
                if (item.IdHinhAnh == listIDHinhAnh[temp])
                {
                    temp++;
                    HinhAnhTin[temp] = (item.IdHinhAnh.ToString(), item.SourceHinhAnh);
                }
            }
            return HinhAnhTin;
        }
        public (string value, string display)[] GetHashTagTintuc(string id)
        {
            int temp = 0;
            HashtagTin = new (string value, string display)[100];
            //subTintucs = _context.SubTintuc.ToArray();
            Hashtags = _context.Hashtag.ToArray();
            foreach (var item in _context.SubTintuc)
            {
                if (item.IdTintuc == id & item.IdHashtag != null)
                {
                    listIDHashtag[temp] = item.IdHashtag;
                    temp++;
                }
            }

            temp = 0;
            foreach (var item in Hashtags)
            {
                if (item.IdHashtag == listIDHashtag[temp])
                {
                    temp++;
                    HashtagTin[temp] = (item.IdHashtag.ToString(), item.Hashtag1);
                }
            }
            return HashtagTin;
        }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio)[] GetLTD()
        {
            List<Trandau> temptrandau = _context.Trandau.ToList();
            listLTD = new (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio)[100];
            int temp = 0;
            foreach (var item in temptrandau)
            {

                listLTD[temp] = (item.IdTranDau, GetTenDB(item.DoiNha), GetTenDB(item.DoiKhach), item.ThoiGianThiDau, item.GioThiDau);
                temp++;

            }
            return listLTD;

        }
        public string GetTenDB(string id)
        {
            string temp = "";
            foreach (var item in _context.Doibong)
            {
                if (item.IdDoiBong == id)
                {
                    temp = item.TenDoi;
                }

            }
            return temp;
        }
        public (string IDDoiBong, int? Diem)[] GetBangXepHang()
        {
            List<ThongTinXepHang> tempBXH = _context.ThongTinXepHang.ToList();
            int temp = 0;
            listbangxephang = new (string IDDoiBong, int? Diem)[100];
            foreach (var item in tempBXH)
            {
                listbangxephang[temp] = (GetTenDoiBong(item.IdDoiBong), item.Diem);
                temp++;
            }
            return listbangxephang;
        }
        public string GetTenDoiBong(string id)
        {
            string temp = "";
            foreach (var item in _context.Doibong)
            {
                if (item.IdDoiBong == id)
                {
                    temp = item.TenDoi;
                }

            }
            return temp;
        }

        public (string DoiBong, int? Diem)[] GetDiem()
        {
            int temp = 0;
            DiemXepHang = new (string DoiBong, int? Diem)[100];
            thongTinXepHangs = _context.ThongTinXepHang.ToArray();
            foreach (var item in _context.ThongTinXepHang)
            {
                listDiem[temp] = item.Diem;
                temp++;
            }
            temp = 0;
            foreach (var item in thongTinXepHangs)
            {
                if (item.Diem == listDiem[temp])
                {
                    DiemXepHang[temp] = (item.IdDoiBong, item.Diem = (item.Thang * 3) + item.Hoa);
                    temp++;
                }
            }
            return DiemXepHang;
        }

    }
}
