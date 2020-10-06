using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class Hinhanh
    {
        public Hinhanh()
        {
            SubTintuc = new HashSet<SubTintuc>();
        }

        public string IdHinhAnh { get; set; }
        public string SourceHinhAnh { get; set; }
        public string IdLoaiHinhAnh { get; set; }

        public virtual Loaihinhanh IdLoaiHinhAnhNavigation { get; set; }
        public virtual ICollection<SubTintuc> SubTintuc { get; set; }
    }
}
