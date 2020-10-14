using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web_11.Identify
{
    public class CanUpdatePostRequirement : IAuthorizationRequirement
    {
        public bool AdminCanUpdate { set; get; }
        public bool OwnerCanUpdate { set; get; }
        public CanUpdatePostRequirement(bool _adminCanUpdate = true, bool _ownerCanupdate = true)
        {
            AdminCanUpdate = _adminCanUpdate;
            OwnerCanUpdate = _ownerCanupdate;
        }
    }
}
