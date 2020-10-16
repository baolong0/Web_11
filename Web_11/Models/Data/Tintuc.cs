using System;
using System.Collections.Generic;

namespace Web_11.Models.data
{
    public partial class Tintuc
    {
        public Tintuc()
        {
            SubTintuc = new HashSet<SubTintuc>();
        }

        public string IdTinTuc { get; set; }
        public string TieuDe { get; set; }
        public string Avatar { get; set; }
        public string TomTat { get; set; }
        public int? LuotTuongTac { get; set; }
        public int? LuotXem { get; set; }
        public string TrangThaiHienThi { get; set; }
        public string TextNoiDung { get; set; }

        public virtual ICollection<SubTintuc> SubTintuc { get; set; }
    }
}
