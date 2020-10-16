using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Web_11.Models;

namespace Web_11.Areas.Admin.Pages.Role
{
    [Authorize(Roles = "Admin")]
    public class DeleteUserModel : PageModel
    {
        private readonly UserManager<AppUser> _userManager;

        public DeleteUserModel(UserManager<AppUser> userManager)
        {
            _userManager = userManager;
        }

        public class InputModel
        {
            [Required]
            public string ID { set; get; }
            public string Name { set; get; }

        }

        [BindProperty]
        public InputModel Input { set; get; }

        [BindProperty]
        public bool isConfirmed { set; get; }

        [TempData] // Sử dụng Session
        public string StatusMessage { get; set; }

        public IActionResult OnGet() => NotFound("Không thấy");

        public async Task<IActionResult> OnPost()
        {

            if (!ModelState.IsValid)
            {
                return NotFound("Không xóa được");
            }

            var User = await _userManager.FindByIdAsync(Input.ID);
            if (User == null)
            {
                return NotFound("Không thấy User cần xóa");
            }

            ModelState.Clear();

            if (isConfirmed)
            {
                //Xóa
                await _userManager.DeleteAsync(User);
                StatusMessage = "Đã xóa " + User.UserName;

                return RedirectToPage("Index");
            }
            else
            {
                Input.Name = User.UserName;
                isConfirmed = true;

            }

            return Page();
        }
    }
}
