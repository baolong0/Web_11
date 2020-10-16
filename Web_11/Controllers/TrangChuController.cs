using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNetCore.Identity;
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
            tinTucChiTietModel.Tintucs = _context.Tintuc.FirstOrDefault(m => m.IdTinTuc == id);
            return View(tinTucChiTietModel);
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
