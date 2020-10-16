using System;
using System.Collections.Generic;

namespace Web_11.Models.data
{
    public partial class RoleClaims
    {
        public int Id { get; set; }
        public string RoleId { get; set; }
        public string ClaimType { get; set; }
        public string ClaimValue { get; set; }

        public virtual Roles Role { get; set; }
    }
}
