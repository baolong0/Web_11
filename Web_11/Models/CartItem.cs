using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models.data;

namespace Web_11.Models
{
    public class CartItem
    {
        public int quantity { set; get; }
        public Ticket product { set; get; }
    }
}
