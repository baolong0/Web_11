using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models.data;

namespace Web_11.Controllers
{
    public class TrandausController : Controller
    {
        private readonly FootballNewsContext _context;

        public TrandausController(FootballNewsContext context)
        {
            _context = context;
        }
        // có thay đổi ở đâyy

        // GET: Trandaus
        public async Task<IActionResult> Index()
        {
            var footballNewsContext = _context.Trandau.Include(t => t.DoiKhachNavigation).Include(t => t.DoiNhaNavigation);
            return View(await footballNewsContext.ToListAsync());
        }

        // GET: Trandaus/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trandau = await _context.Trandau
                .Include(t => t.DoiKhachNavigation)
                .Include(t => t.DoiNhaNavigation)
                .FirstOrDefaultAsync(m => m.IdTranDau == id);
            if (trandau == null)
            {
                return NotFound();
            }

            return View(trandau);
        }

        // GET: Trandaus/Create
        public IActionResult Create()
        {
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            return View();
        }

        // POST: Trandaus/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdTranDau,DoiNha,DoiKhach,ThoiGianThiDau,SanThiDau,TiSo")] Trandau trandau)
        {
            if (ModelState.IsValid)
            {
                _context.Add(trandau);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiNha);
            return View(trandau);
        }

        // GET: Trandaus/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trandau = await _context.Trandau.FindAsync(id);
            if (trandau == null)
            {
                return NotFound();
            }
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiNha);
            return View(trandau);
        }

        // POST: Trandaus/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("IdTranDau,DoiNha,DoiKhach,ThoiGianThiDau,SanThiDau,TiSo")] Trandau trandau)
        {
            if (id != trandau.IdTranDau)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(trandau);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TrandauExists(trandau.IdTranDau))
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
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", trandau.DoiNha);
            return View(trandau);
        }

        // GET: Trandaus/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var trandau = await _context.Trandau
                .Include(t => t.DoiKhachNavigation)
                .Include(t => t.DoiNhaNavigation)
                .FirstOrDefaultAsync(m => m.IdTranDau == id);
            if (trandau == null)
            {
                return NotFound();
            }

            return View(trandau);
        }

        // POST: Trandaus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var trandau = await _context.Trandau.FindAsync(id);
            _context.Trandau.Remove(trandau);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TrandauExists(string id)
        {
            return _context.Trandau.Any(e => e.IdTranDau == id);
        }
    }
}
