using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_11.Models.Data;

namespace Web_11.Models
{
    public class TinTucChiTietModel
    {
        private readonly FootballNewsContext _context;
        public IList<SubTintuc> subTintucs { get; set; }
        public IList<Hashtag> Hashtags { get; set; }
        public Tintuc Tintucs { get; set; }
        public IList<Noidung> NoiDungs { get; set; }
        public IList<Hinhanh> Hinhanhs { get; set; }
        IList<int?> listIDnoiDung;
        IList<int?> listIDHinhAnh;
        IList<int?> listIDHashtag;
        public (string value, string display)[] NoiDungTin { get; set; }
        public (string value, string display)[] HashtagTin { get; set; }
        public (string value, string display)[] HinhAnhTin { get; set; }
        
    }
}
