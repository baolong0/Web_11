using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models.data;

namespace Web_11.Models
{
    public class TrangchuViewModel
    {
        public IList<Tintuc> Tintucs { get; set; }
        public IList<Tintuc> TintucHots { get; set; }
        public IList<Tintuc> TintucTrongTuans { get; set; }
        public (string TranDau, string srcDoiNha, string srcDoiKhach, DateTime? Thoigian, TimeSpan? Gio)[] listLTD { get; set; }
        public (string IDDoiBong, int? Diem)[] listbangxephang { get; set; }
        public (string DoiBong, int? Diem)[] DiemXepHang { get; set; }
    }
}
