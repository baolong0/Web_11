using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models.Data;

namespace Web_11.Controllers
{
    public class ThongtincobansController : Controller
    {
        private readonly FootballNewsContext _context;

        public ThongtincobansController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Thongtincobans
        public async Task<IActionResult> Index()
        {
            var footballNewsContext = _context.Thongtincoban.Include(t => t.IdDoiBongNavigation);
            return View(await footballNewsContext.ToListAsync());
        }

        // GET: Thongtincobans/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var thongtincoban = await _context.Thongtincoban
                .Include(t => t.IdDoiBongNavigation)
                .FirstOrDefaultAsync(m => m.IdThongTin == id);
            if (thongtincoban == null)
            {
                return NotFound();
            }

            return View(thongtincoban);
        }

        // GET: Thongtincobans/Create
        public IActionResult Create()
        {
            ViewData["IdDoiBong"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            return View();
        }

        // POST: Thongtincobans/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdThongTin,DiaChi,Hotline,Email,Website,SanVanDong,SucChua,ChuTichClb,Gđdh,Hlvtruong,Gđkt,NhaTaiTro,IdDoiBong")] Thongtincoban thongtincoban)
        {
            if (ModelState.IsValid)
            {
                _context.Add(thongtincoban);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdDoiBong"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", thongtincoban.IdDoiBong);
            return View(thongtincoban);
        }

        // GET: Thongtincobans/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var thongtincoban = await _context.Thongtincoban.FindAsync(id);
            if (thongtincoban == null)
            {
                return NotFound();
            }
            ViewData["IdDoiBong"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", thongtincoban.IdDoiBong);
            return View(thongtincoban);
        }

        // POST: Thongtincobans/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("IdThongTin,DiaChi,Hotline,Email,Website,SanVanDong,SucChua,ChuTichClb,Gđdh,Hlvtruong,Gđkt,NhaTaiTro,IdDoiBong")] Thongtincoban thongtincoban)
        {
            if (id != thongtincoban.IdThongTin)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(thongtincoban);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ThongtincobanExists(thongtincoban.IdThongTin))
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
            ViewData["IdDoiBong"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", thongtincoban.IdDoiBong);
            return View(thongtincoban);
        }

        // GET: Thongtincobans/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var thongtincoban = await _context.Thongtincoban
                .Include(t => t.IdDoiBongNavigation)
                .FirstOrDefaultAsync(m => m.IdThongTin == id);
            if (thongtincoban == null)
            {
                return NotFound();
            }

            return View(thongtincoban);
        }

        // POST: Thongtincobans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var thongtincoban = await _context.Thongtincoban.FindAsync(id);
            _context.Thongtincoban.Remove(thongtincoban);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ThongtincobanExists(string id)
        {
            return _context.Thongtincoban.Any(e => e.IdThongTin == id);
        }
    }
}
