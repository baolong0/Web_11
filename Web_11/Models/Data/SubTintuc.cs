﻿using System;
using System.Collections.Generic;

namespace Web_11.Models.data
{
    public partial class SubTintuc
    {
        public int IdSubTt { get; set; }
        public string IdTintuc { get; set; }
        public int? IdHinhAnh { get; set; }
        public int? IdHashtag { get; set; }
        public string IdLoaiTin { get; set; }

        public virtual Hashtag IdHashtagNavigation { get; set; }
        public virtual Hinhanh IdHinhAnhNavigation { get; set; }
        public virtual Loaitin IdLoaiTinNavigation { get; set; }
        public virtual Tintuc IdTintucNavigation { get; set; }
    }
}
