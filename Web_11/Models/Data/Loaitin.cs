using System;
using System.Collections.Generic;

namespace Web_11.Models.data
{
    public partial class Loaitin
    {
        public Loaitin()
        {
            SubTintuc = new HashSet<SubTintuc>();
        }

        public string IdLoaiTin { get; set; }
        public string TenLoaiTin { get; set; }

        public virtual ICollection<SubTintuc> SubTintuc { get; set; }
    }
}
