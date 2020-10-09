using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models;
using Web_11.Models.Data;

namespace Web_11.Controllers
{
    public class TintucController : Controller
    {
        private readonly FootballNewsContext _context;
        private IList<SubTintuc> subTintucs { get; set; }
        private IList<Hashtag> Hashtags { get; set; }
        private Tintuc Tintucs { get; set; }
        private IList<Noidung> NoiDungs { get; set; }
        private IList<Hinhanh> Hinhanhs { get; set; }
        int?[] listIDnoiDung = new int?[100];
        int?[] listIDHinhAnh = new int?[100];
        int?[] listIDHashtag = new int?[100];
        public (string value, string display)[] NoiDungTin { get; set; }
        public (string value, string display)[] HashtagTin { get; set; }
        public (string value, string display)[] HinhAnhTin { get; set; }

        public TintucController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Tintuc
        public async Task<IActionResult> Index()
        {
            TinTucViewsModel tinTucViewsModel = new TinTucViewsModel();
            tinTucViewsModel.subTintucs = _context.SubTintuc.ToArray();
            tinTucViewsModel.Tintucs = _context.Tintuc.ToArray();
            tinTucViewsModel.Hashtags = _context.Hashtag.ToArray();
            tinTucViewsModel.TintucHots = _context.Tintuc.ToArray();
            tinTucViewsModel.TintucTrongTuans = _context.Tintuc.ToArray();
            tinTucViewsModel.TintucChuyenNhuongs = _context.Tintuc.ToArray();
            return View(tinTucViewsModel);
        }

        // GET: Tintuc/Details/5
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
            subTintucs = _context.SubTintuc.ToArray();
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
            subTintucs = _context.SubTintuc.ToArray();
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
            subTintucs = _context.SubTintuc.ToArray();
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


    }

}
