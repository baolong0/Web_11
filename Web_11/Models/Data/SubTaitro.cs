using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class SubTaitro
    {
        public string IdDoiBong { get; set; }
        public string IdTaiTro { get; set; }

        public virtual Doibong IdDoiBongNavigation { get; set; }
        public virtual Taitro IdTaiTroNavigation { get; set; }
    }
}
