using System;
using System.Collections.Generic;

namespace Web_11.Models.data
{
    public partial class UserTokens
    {
        public string UserId { get; set; }
        public string LoginProvider { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }

        public virtual Users User { get; set; }
    }
}
