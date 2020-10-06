using System;
using System.Collections.Generic;

namespace Web_11.Models
{
    public partial class SubTintuc
    {
        public string IdTintuc { get; set; }
        public string IdHinhAnh { get; set; }
        public string IdNoiDung { get; set; }
        public string IdHashtag { get; set; }

        public virtual Hashtag IdHashtagNavigation { get; set; }
        public virtual Hinhanh IdHinhAnhNavigation { get; set; }
        public virtual Noidung IdNoiDungNavigation { get; set; }
        public virtual Tintuc IdTintucNavigation { get; set; }
    }
}
