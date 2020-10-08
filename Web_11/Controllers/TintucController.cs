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

        public TintucController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Tintuc
        public async Task<IActionResult> Index()
        {
            TinTucViewsModel tinTucViewsModel = new TinTucViewsModel();
            tinTucViewsModel.Tintucs = _context.Tintuc.ToArray();
            tinTucViewsModel.Hashtags = _context.Hashtag.ToArray();
            tinTucViewsModel.TintucHots= _context.Tintuc.ToArray();
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

            var tintuc = await _context.Tintuc
                .FirstOrDefaultAsync(m => m.IdTinTuc == id);
            if (tintuc == null)
            {
                return NotFound();
            }

            return View(tintuc);
        }      
    }
}
