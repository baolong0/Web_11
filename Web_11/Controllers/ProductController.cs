using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Web_11.Data;
using Web_11.Models;
using Web_11.Models.data;

namespace Web_11.Controllers
{
    [Route("/products")]
    public class ProductController : Controller
    {
        private readonly ILogger<ProductController> _logger;

        private readonly FootballNewsContext _context;

        public ProductController(ILogger<ProductController> logger, FootballNewsContext context)
        {
            _logger = logger;
            _context = context;
        }

        // Hiện thị danh sách sản phẩm, có nút chọn đưa vào giỏ hàng
        public IActionResult Index()
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
                .Where(p => p.IdVe == productid.ToString())
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
        public IActionResult RemoveCart([FromRoute]string productid)
        {

            // Xử lý xóa một mục của Cart ...
            return RedirectToAction(nameof(Cart));
        }

        /// Cập nhật
        [Route("/updatecart", Name = "updatecart")]
        [HttpPost]
        public IActionResult UpdateCart([FromForm]string productid, [FromForm]int quantity)
        {
            // Cập nhật Cart thay đổi số lượng quantity ...

            return RedirectToAction(nameof(Cart));
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