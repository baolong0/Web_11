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
    public class LichThiDauController : Controller
    {
        private Tintuc Tintucs { get; set; }
        private IList<Hinhanh> Hinhanhs { get; set; }
        private IList<Hashtag> Hashtags { get; set; }
        DateTime?[] ListTime = new DateTime?[100];
        private Trandau Trandau { get; set; }
        private IList<Trandau> Trandaus { get; set; }
        int?[] listIDnoiDung = new int?[100];
        int?[] listIDHinhAnh = new int?[100];
        int?[] listIDHashtag = new int?[100];
        public (string value, string display)[] NoiDungTin { get; set; }
        public (string value, string display)[] HashtagTin { get; set; }
        public (string value, string display)[] HinhAnhTin { get; set; }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio, string svd, string tiso)[] listLTD { get; set; }
        private readonly FootballNewsContext _context;

        public LichThiDauController(FootballNewsContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            LichThiDauViewModel lichThiDauViewModel = new LichThiDauViewModel();
            lichThiDauViewModel.listLTD = GetLTD();
            lichThiDauViewModel.Tintucs = _context.Tintuc.ToArray();
            //lichThiDauViewModel.trandaus = GetTrandau();
            return View(lichThiDauViewModel);

        }
        public IActionResult DetailsTTLTD(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            TinTucChiTietModel tinTucChiTietModel = new TinTucChiTietModel();
            tinTucChiTietModel.Tintucs = GetTintuc(id);
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
        public Trandau GetTrandau()
        {
            foreach (var item in _context.Trandau)
            {
                    Trandau = item;
            }
            return Trandau;
        }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio, string svd, string tiso)[] GetLTD ()
        {
            List<Trandau> temptrandau = _context.Trandau.ToList();
            listLTD = new (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio, string svd, string tiso)[100];
            int temp = 0;
            foreach(var item in temptrandau)
            {
                
                    listLTD[temp] = (item.IdTranDau, GetTenDB(item.DoiNha), GetTenDB(item.DoiKhach), item.ThoiGianThiDau,item.GioThiDau, item.SanThiDau, item.TiSo);
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
        
        // GET: LichThiDau

    }
}
