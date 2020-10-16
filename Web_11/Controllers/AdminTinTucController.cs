using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models;
using Web_11.Models.data;

namespace Web_11.Controllers
{ //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    public class AdminTinTucController : Controller
    {
        private readonly FootballNewsContext _context;

        public AdminTinTucController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: AdminTinTuc
        public async Task<IActionResult> Index()
        {
            TinTucModel tinTuc = new TinTucModel
            {
                Tintucs = _context.Tintuc.ToArray()
            };
            return View(tinTuc);
        }

        // GET: AdminTinTuc/Details/5
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
        #region Create
        // GET: AdminTinTuc/Create
        public async Task<IActionResult> CreateTT()
        {
            return View();
        }
        public async Task<IActionResult> CreateND()
        {
            return View();
        }
        public IActionResult CreateHA()
        {
            return View();
        }
        public IActionResult CreateHT()
        {
            return View();
        }
        public IActionResult FinishCreateTT()
        {
            string mess = "";
            try
            {
                Tintuc tintuc = GetTintucVoDanh();
                List<Hinhanh> hinhanhs = GetListHinhAnhVoDanh();
                List<Hashtag> hashtags = GetListhashtagVoDanh();
                mess = "Thêm tin thành công";
            }
            catch (Exception)
            {

                mess = "Có lỗi bất ngờ xảy ra";
            }
            return Content(mess);
        }

        // POST: AdminTinTuc/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateHT([Bind("IdHashtag,Hashtag1")] Hashtag hashtag)
        {
            if (ModelState.IsValid)
            {
                _context.Add(hashtag);
                await _context.SaveChangesAsync();
            }
            return View(hashtag);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateTT([Bind("IdTinTuc,TieuDe,Avatar,TomTat,LuotTuongTac,LuotXem,TrangThaiHienThi")] Tintuc tintuc)
        {
            if (ModelState.IsValid)
            {
                CreateNewTin(tintuc);
            }
            return View(tintuc);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateHA([Bind("IdHinhAnh,SourceHinhAnh")] Hinhanh hinhanh)
        {
            if (ModelState.IsValid)
            {
                _context.Add(hinhanh);
                await _context.SaveChangesAsync();
            }
            return View(hinhanh);
        }

        public void CreateNewTin(Tintuc tintuc)
        {
            _context.Tintuc.Add(tintuc);
            _context.SaveChanges();

        }
        
        public Tintuc GetTintucVoDanh()
        {
            Tintuc kq = new Tintuc();
            List<Tintuc> tintucs = _context.Tintuc.ToList();
            List<SubTintuc> subTintucs = _context.SubTintuc.ToList();
            string[] LT = new string[tintucs.Count()];
            string[] LS = new string[subTintucs.Count()];
            for (int i = 0; i < tintucs.Count(); i++)
            {
                LT[i] = tintucs[i].IdTinTuc;
            }
            for (int i = 0; i < subTintucs.Count(); i++)
            {
                LS[i] = subTintucs[i].IdTintuc;
            }
            foreach (var item in LT)
            {
                if (Array.Exists(LS, element => element == item))
                {
                }
                else
                {
                    kq = _context.Tintuc.First(m => m.IdTinTuc == item);
                }
            }
            return kq;
        }
        public List<Hinhanh> GetListHinhAnhVoDanh()
        {
            List<Hinhanh> Kq = new List<Hinhanh>();
            List<Hinhanh> noidungs = _context.Hinhanh.ToList();
            int[] ListNoidungFull = new int[noidungs.Count()];
            for (int i = 0; i < noidungs.Count(); i++)
            {
                ListNoidungFull[i] = noidungs[i].IdHinhAnh;
            }
            List<SubTintuc> subTintucs = _context.SubTintuc.ToList();
            int?[] NoidungsTTkhongNull = new int?[subTintucs.Count()];
            int temp = 0;
            for (int i = 0; i < subTintucs.Count(); i++)
            {
                if (subTintucs[i].IdHinhAnh != null)
                {
                    NoidungsTTkhongNull[temp] = subTintucs[i].IdHinhAnh;
                    temp++;
                }
            }
            foreach (var item in ListNoidungFull)
            {
                if (Array.Exists(NoidungsTTkhongNull, element => element == item))
                {
                }
                else
                {
                    Hinhanh tempNoidung = _context.Hinhanh.First(m => m.IdHinhAnh == item);
                    Kq.Add(tempNoidung);
                }
            }
            return Kq;
        }
        public List<Hashtag> GetListhashtagVoDanh()
        {
            List<Hashtag> Kq = new List<Hashtag>();
            List<Hashtag> noidungs = _context.Hashtag.ToList();
            int[] ListNoidungFull = new int[noidungs.Count()];
            for (int i = 0; i < noidungs.Count(); i++)
            {
                ListNoidungFull[i] = noidungs[i].IdHashtag;
            }
            List<SubTintuc> subTintucs = _context.SubTintuc.ToList();
            int?[] NoidungsTTkhongNull = new int?[subTintucs.Count()];
            int temp = 0;
            for (int i = 0; i < subTintucs.Count(); i++)
            {
                if (subTintucs[i].IdHashtag != null)
                {
                    NoidungsTTkhongNull[temp] = subTintucs[i].IdHashtag;
                    temp++;
                }
            }
            foreach (var item in ListNoidungFull)
            {
                if (Array.Exists(NoidungsTTkhongNull, element => element == item))
                {
                }
                else
                {
                    Hashtag tempNoidung = _context.Hashtag.First(m => m.IdHashtag == item);
                    Kq.Add(tempNoidung);
                }
            }
            return Kq;
        }


        #endregion

        // GET: AdminTinTuc/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tintuc = await _context.Tintuc.FindAsync(id);
            if (tintuc == null)
            {
                return NotFound();
            }
            return View(tintuc);
        }

        // POST: AdminTinTuc/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("IdTinTuc,TieuDe,Avatar,TomTat,LuotTuongTac,LuotXem,TrangThaiHienThi")] Tintuc tintuc)
        {
            if (id != tintuc.IdTinTuc)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(tintuc);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TintucExists(tintuc.IdTinTuc))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(tintuc);
        }

        // GET: AdminTinTuc/Delete/5
        public async Task<IActionResult> Delete(string id)
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

        // POST: AdminTinTuc/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var tintuc = await _context.Tintuc.FindAsync(id);
            _context.Tintuc.Remove(tintuc);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TintucExists(string id)
        {
            return _context.Tintuc.Any(e => e.IdTinTuc == id);
        }


    }
}
