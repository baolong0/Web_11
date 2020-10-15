﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Web_11.Models
{
    public class Post
    {
        [Key]
        public int ID;
        public string title { set; get; }
        public string content { set; get; }
        public DateTime publishedDate { set; get; }

        // UserID là ID của User đăng bài
        public string UserID { set; get; }
        [ForeignKey("UserID")]
        public AppUser User { set; get; }
    }
}
