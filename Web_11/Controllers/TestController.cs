using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Web_11.Controllers
{
    public class TestController : Controller
    {
        public IActionResult testView()
        {
            return View();
        }
    }
}