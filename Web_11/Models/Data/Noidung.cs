using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class Noidung
    {
        public Noidung()
        {
            SubTintuc = new HashSet<SubTintuc>();
        }

        public string IdNoiDung { get; set; }
        public string TextNoiDung { get; set; }

        public virtual ICollection<SubTintuc> SubTintuc { get; set; }
    }
}
