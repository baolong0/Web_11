using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Web_11.Models;
using Web_11.Models.data;

namespace Web_11.Controllers
{
    [Authorize]
    public class TicketsController : Controller
    {
        private readonly ILogger<TicketsController> _logger;
        public List<Doibong> doibongs { get; set; }
        public (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian)[] ListVeVsLogo { get; set; }
        public (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian) VeDuocChon { get; set; }
        private readonly FootballNewsContext _context;

        public TicketsController(ILogger<TicketsController> logger, FootballNewsContext context)
        {
            _context = context;
            _logger = logger;
        }
        [AllowAnonymous]
        // GET: Tickets
        public IActionResult Index()
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
                ListVeVsLogo[temp] = (item.IdVe, GetLogoSrc(item.DoiNha), GetLogoSrc(item.DoiKhach), item.ThoiGianBatDau);
                temp++;
            }
            return ListVeVsLogo;
        }
        public string GetLogoSrc(string id)
        {
            string temp = "";
            foreach (var item in _context.Doibong)
            {
                if (item.IdDoiBong == id)
                {
                    temp = item.SourceLogo;
                }

            }
            return temp;
        }
        public (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian) GetTicket(string id, (string IDve, string srcLogoDoiNha, string srcLogoDoiKhach, DateTime? Thoigian)[] listve)
        {
            foreach (var item in listve)
            {
                if (item.IDve==id)
                {
                     return item;
                }
            }
            return ("", "", "", null);
        }
       
            public IActionResult Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            TicketsViewsModel ticketsViewsModel = new TicketsViewsModel();
            ticketsViewsModel.tickets = _context.Ticket.ToList();
            ticketsViewsModel.trandaus = _context.Trandau.ToList();
            ticketsViewsModel.doibongs = _context.Doibong.ToList();
            ticketsViewsModel.ListVeVsLogo = GetListVe();
            ticketsViewsModel.loaives = _context.Loaive.ToList();
            ticketsViewsModel.trandaus = _context.Trandau.ToList();
            ticketsViewsModel.doibongs = _context.Doibong.ToList();
            ticketsViewsModel.VeDuocChon = GetTicket(id,ListVeVsLogo);

            return View(ticketsViewsModel);
        }
        // Key lưu chuỗi json của Cart
        public const string CARTKEY = "cart";

        // Lấy cart từ Session (danh sách CartItem)
        List<CartItem> GetCartItems()
        {

            var session = HttpContext.Session;
            string jsoncart = session.GetString(CARTKEY);
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
            }
            return new List<CartItem>();
        }

        // Xóa cart khỏi session
        void ClearCart()
        {
            var session = HttpContext.Session;
            session.Remove(CARTKEY);
        }

        // Lưu Cart (Danh sách CartItem) vào session
        void SaveCartSession(List<CartItem> ls)
        {
            var session = HttpContext.Session;
            string jsoncart = JsonConvert.SerializeObject(ls);
            session.SetString(CARTKEY, jsoncart);
        }


        /// Thêm sản phẩm vào cart
        [Route("addcart/{productid}", Name = "addcart")]
        public IActionResult AddToCart([FromRoute] string productid)
        {

            var product = _context.Ticket
                .Where(p => p.IdVe == productid.ToString().Trim())
                .FirstOrDefault();
            if (product == null)
                return NotFound("Không có sản phẩm");

            // Xử lý đưa vào Cart ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.IdVe == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.quantity++;
            }
            else
            {
                //  Thêm mới
                cart.Add(new CartItem() { quantity = 1, product = product });
            }

            // Lưu cart vào Session
            SaveCartSession(cart);
            // Chuyển đến trang hiện thị Cart
            return RedirectToAction(nameof(Cart));
        }
        /// xóa item trong cart
        [Route("/removecart/{productid}", Name = "removecart")]
        public IActionResult RemoveCart([FromRoute] string productid)
        {
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.IdVe == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cart.Remove(cartitem);
            }

            SaveCartSession(cart);
            return RedirectToAction(nameof(Cart));
        }
        /// Cập nhật
        [Route("/updatecart", Name = "updatecart")]
        [HttpPost]
        public IActionResult UpdateCart([FromForm] string productid, [FromForm] int quantity)
        {
            // Cập nhật Cart thay đổi số lượng quantity ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.IdVe == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.quantity = quantity;
            }
            SaveCartSession(cart);
            // Trả về mã thành công (không có nội dung gì - chỉ để Ajax gọi)
            return Ok();
        }
        // Hiện thị giỏ hàng
        [Route("/cart", Name = "cart")]
        public IActionResult Cart()
        {
            TicketsViewsModel ticketsViewsModel = new TicketsViewsModel();
            ticketsViewsModel.hinhanhQcs = _context.HinhanhQc.ToList();
            ticketsViewsModel.tickets = _context.Ticket.ToList();
            ticketsViewsModel.trandaus = _context.Trandau.ToList();
            ticketsViewsModel.doibongs = _context.Doibong.ToList();
            ticketsViewsModel.loaives = _context.Loaive.ToList();
            ticketsViewsModel.cartItems = GetCartItems();
            return View(ticketsViewsModel);
        }

        [Route("/checkout")]
        public IActionResult CheckOut()
        {
            // Xử lý khi đặt hàng
            return View();
        }

    }
}
