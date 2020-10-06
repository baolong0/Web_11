using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Web_11.Models;

namespace Web_11.Controllers
{
    public class HomeController : Controller
    {
        private readonly FootballNewsContext _context;

        public HomeController(FootballNewsContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            HomeModel homeModel = new HomeModel();
            homeModel.Tintucs = _context.Tintuc.ToArray();
            return View(homeModel);
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult DoanhThu()
        {
            return View();
        }
        public IActionResult VeBan()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
