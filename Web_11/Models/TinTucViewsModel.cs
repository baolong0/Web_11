using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models.Data;

namespace Web_11.Models
{
    public class TinTucViewsModel
    {
        public IList<Tintuc> Tintucs { get; set; }
        public IList<Hashtag> Hashtags { get; set; }
        public IList<Tintuc> TintucHots { get; set; }
        public IList<Tintuc> TintucTrongTuans { get; set; }
        public IList<Tintuc> TintucChuyenNhuongs { get; set; }
    }
}
