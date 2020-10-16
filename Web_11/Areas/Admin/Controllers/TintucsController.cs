using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models;
using Web_11.Models.data;

namespace Web_11.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    [Area("Admin")]
    public class TintucsController : Controller
    {
        private readonly FootballNewsContext _context;

        public TintucsController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Admin/Tintucs
        public async Task<IActionResult> Index()
        {
            TinTucModel tinTuc = new TinTucModel
            {
                Tintucs = _context.Tintuc.ToArray()
            };
            return View(tinTuc);
        }
        // GET: Admin/Tintucs/Details/5
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

        // GET: Admin/Tintucs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Tintucs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdTinTuc,TieuDe,Avatar,TomTat,LuotTuongTac,LuotXem,TrangThaiHienThi,TextNoiDung")] Tintuc tintuc)
        {
            if (ModelState.IsValid)
            {
                tintuc.LuotXem = 0;tintuc.LuotTuongTac = 0;
                tintuc.TrangThaiHienThi = "Hiển Thị";
                _context.Add(tintuc);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(tintuc);
        }

        // GET: Admin/Tintucs/Edit/5
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

        // POST: Admin/Tintucs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("IdTinTuc,TieuDe,Avatar,TomTat,LuotTuongTac,LuotXem,TrangThaiHienThi,TextNoiDung")] Tintuc tintuc)
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

        // GET: Admin/Tintucs/Delete/5
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

        // POST: Admin/Tintucs/Delete/5
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
