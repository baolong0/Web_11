using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_11.Models.data;

namespace Web_11.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    [Area("Admin")]
    public class TicketsController : Controller
    {
        private readonly FootballNewsContext _context;

        public TicketsController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Admin/Tickets
        public async Task<IActionResult> Index()
        {
            var footballNewsContext = _context.Ticket.Include(t => t.DoiKhachNavigation).Include(t => t.DoiNhaNavigation).Include(t => t.IdLoaiVeNavigation);
            return View(await footballNewsContext.ToListAsync());
        }

        // GET: Admin/Tickets/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ticket = await _context.Ticket
                .Include(t => t.DoiKhachNavigation)
                .Include(t => t.DoiNhaNavigation)
                .Include(t => t.IdLoaiVeNavigation)
                .FirstOrDefaultAsync(m => m.IdVe == id);
            if (ticket == null)
            {
                return NotFound();
            }

            return View(ticket);
        }

        // GET: Admin/Tickets/Create
        public IActionResult Create()
        {
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            ViewData["IdLoaiVe"] = new SelectList(_context.Loaive, "IdLoaiVe", "IdLoaiVe");
            return View();
        }

        // POST: Admin/Tickets/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdVe,IdLoaiVe,DoiNha,DoiKhach,ThoiGianBatDau")] Ticket ticket)
        {
            if (ModelState.IsValid)
            {
                _context.Add(ticket);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiNha);
            ViewData["IdLoaiVe"] = new SelectList(_context.Loaive, "IdLoaiVe", "IdLoaiVe", ticket.IdLoaiVe);
            return View(ticket);
        }

        // GET: Admin/Tickets/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ticket = await _context.Ticket.FindAsync(id);
            if (ticket == null)
            {
                return NotFound();
            }
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiNha);
            ViewData["IdLoaiVe"] = new SelectList(_context.Loaive, "IdLoaiVe", "IdLoaiVe", ticket.IdLoaiVe);
            return View(ticket);
        }

        // POST: Admin/Tickets/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("IdVe,IdLoaiVe,DoiNha,DoiKhach,ThoiGianBatDau")] Ticket ticket)
        {
            if (id != ticket.IdVe)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(ticket);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TicketExists(ticket.IdVe))
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
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiKhach);
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong", ticket.DoiNha);
            ViewData["IdLoaiVe"] = new SelectList(_context.Loaive, "IdLoaiVe", "IdLoaiVe", ticket.IdLoaiVe);
            return View(ticket);
        }

        // GET: Admin/Tickets/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ticket = await _context.Ticket
                .Include(t => t.DoiKhachNavigation)
                .Include(t => t.DoiNhaNavigation)
                .Include(t => t.IdLoaiVeNavigation)
                .FirstOrDefaultAsync(m => m.IdVe == id);
            if (ticket == null)
            {
                return NotFound();
            }

            return View(ticket);
        }

        // POST: Admin/Tickets/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var ticket = await _context.Ticket.FindAsync(id);
            _context.Ticket.Remove(ticket);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TicketExists(string id)
        {
            return _context.Ticket.Any(e => e.IdVe == id);
        }
    }
}
