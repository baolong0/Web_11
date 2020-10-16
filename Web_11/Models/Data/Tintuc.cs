using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Web_11.Models.data
{
    public partial class Tintuc
    {
        public Tintuc()
        {
            SubTintuc = new HashSet<SubTintuc>();
        }
        [Required(ErrorMessage = "ID không được bỏ trống")]
        [Display(Name = "ID Tin Tức")]
        public string IdTinTuc { get; set; }
        [DataType(DataType.Text)]
        [Display(Name = "Tiêu đề tin tức")]
        public string TieuDe { get; set; }
        [Required(ErrorMessage = "Phải tạo url")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "{0} dài {1} đến {2}")]
        [Display(Name = "Url Avatar tin tức")]
        public string Avatar { get; set; }
        [DataType(DataType.Text)]
        [Display(Name = "Tóm Tắt Tin tức")]
        public string TomTat { get; set; }
        public int? LuotTuongTac { get; set; }
        public int? LuotXem { get; set; }
        public string TrangThaiHienThi { get; set; }
        [DataType(DataType.Text)]
        [Display(Name = "Nội dung tin")]
        public string TextNoiDung { get; set; }

        public virtual ICollection<SubTintuc> SubTintuc { get; set; }
    }
}
