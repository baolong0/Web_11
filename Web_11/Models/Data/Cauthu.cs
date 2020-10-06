﻿using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class Cauthu
    {
        public Cauthu()
        {
            Banthang = new HashSet<Banthang>();
            SubCauthu = new HashSet<SubCauthu>();
        }

        public string IdCauThu { get; set; }
        public string TenCauThu { get; set; }

        public virtual ICollection<Banthang> Banthang { get; set; }
        public virtual ICollection<SubCauthu> SubCauthu { get; set; }
    }
}