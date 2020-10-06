using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class SubCauthu
    {
        public string IdDoiBong { get; set; }
        public string IdCauThu { get; set; }

        public virtual Cauthu IdCauThuNavigation { get; set; }
        public virtual Doibong IdDoiBongNavigation { get; set; }
    }
}
