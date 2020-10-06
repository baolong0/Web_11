using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class Taitro
    {
        public Taitro()
        {
            SubTaitro = new HashSet<SubTaitro>();
        }

        public string IdTaiTro { get; set; }
        public string SourceLogo { get; set; }
        public string IdLoaiHinhAnh { get; set; }

        public virtual Loaihinhanh IdLoaiHinhAnhNavigation { get; set; }
        public virtual ICollection<SubTaitro> SubTaitro { get; set; }
    }
}
