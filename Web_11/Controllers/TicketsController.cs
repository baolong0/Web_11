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
    public class TicketsController : Controller
    {
        public List<Doibong> doibongs { get; set; }
        public (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian)[] ListVeVsLogo { get; set; }
        private readonly FootballNewsContext _context;

        public TicketsController(FootballNewsContext context)
        {
            _context = context;
        }

        // GET: Tickets
        public async Task<IActionResult> Index()
        {
            TicketsViewsModel ticketsViewsModel = new TicketsViewsModel();
            ticketsViewsModel.hinhanhQcs = _context.HinhanhQc.ToList();
            ticketsViewsModel.tickets = _context.Ticket.ToList();
            ticketsViewsModel.trandaus = _context.Trandau.ToList();
            ticketsViewsModel.doibongs = _context.Doibong.ToList();
            ticketsViewsModel.ListVeVsLogo = GetListVe();
            return View(ticketsViewsModel);
        }
        // GET: Tickets/Details/5
        public (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian)[] GetListVe()
        {
            List<Ticket> tempTicket = _context.Ticket.ToList();
            int temp = 0;
            ListVeVsLogo = new (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian)[100];
            foreach (var item in tempTicket)
            {
                ListVeVsLogo[temp] = (item.IdVe,GetLogoSrc(item.DoiNha),GetLogoSrc(item.DoiKhach),item.ThoiGianBatDau);
                temp++;
            }
            return ListVeVsLogo;
        }
        public string GetLogoSrc(string id)
        {
            string temp = "";
            foreach (var item in _context.Doibong)
            {
                if (item.IdDoiBong==id)
                {
                    temp = item.SourceLogo;
                }

            }
            return temp;
        }
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

        // GET: Tickets/Create
        public IActionResult Create()
        {
            ViewData["DoiKhach"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            ViewData["DoiNha"] = new SelectList(_context.Doibong, "IdDoiBong", "IdDoiBong");
            ViewData["IdLoaiVe"] = new SelectList(_context.Loaive, "IdLoaiVe", "IdLoaiVe");
            return View();
        }

        // POST: Tickets/Create
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

        // GET: Tickets/Edit/5
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

        // POST: Tickets/Edit/5
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

        // GET: Tickets/Delete/5
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

        // POST: Tickets/Delete/5
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
