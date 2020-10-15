using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models.data;

namespace Web_11.Models
{
    public class LichThiDauViewModel
    {
        public IList<Trandau> trandaus { get; set; }
        public IList<Tintuc> Tintucs { get; set; }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio, string svd, string tiso)[] listLTD { get; set; }

    }
}
