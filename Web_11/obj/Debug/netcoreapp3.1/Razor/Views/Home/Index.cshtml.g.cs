#pragma checksum "C:\Users\A\Desktop\WEB-ST001-Group11\Web_11\Web_11\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "34eb177c8a517d48d081f9e2740dff412fea8935"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\A\Desktop\WEB-ST001-Group11\Web_11\Web_11\Views\_ViewImports.cshtml"
using Web_11;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\A\Desktop\WEB-ST001-Group11\Web_11\Web_11\Views\_ViewImports.cshtml"
using Web_11.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"34eb177c8a517d48d081f9e2740dff412fea8935", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7c3107938e2543ce625f8860f97dc6c43a713e31", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<HomeModel>
    {
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\A\Desktop\WEB-ST001-Group11\Web_11\Web_11\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "Home Page";

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "34eb177c8a517d48d081f9e2740dff412fea89353356", async() => {
                WriteLiteral(@"
<meta charset=""utf-8"">
<meta name=""viewport"" content=""width=device-width, initial-scale=1, shrink-to-fit=no"">
<title>Trang chủ</title>
<link rel=""stylesheet"" href=""../Đồ Án 2/style (1).css"">
<link rel=""stylesheet"" href=""https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"" integrity=""sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"" crossorigin=""anonymous"">
<link rel=""stylesheet""
      href=""https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"">
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "34eb177c8a517d48d081f9e2740dff412fea89354869", async() => {
                WriteLiteral(@"

    <!-- <div class=""container""> -->
    <div class=""container"">
        <div class=""row mt-3"">
            <div class=""col-sm-12 hidden-md col-lg-2"">
                <div class=""row wrap-hot-news "">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <div class=""Tieu-De "">
                            <h5>Tin tức nóng</h5>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/neg_etpyole/2020_09_15/Bellingham_1.JPG"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Bellingham đi vào lịch ");
                WriteLiteral(@"sử Dortmund</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/yrfjpyvslyr/2020_09_11/messi.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Messi có một tỷ USD thu nhập</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>");
                WriteLiteral(@"
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_09_15/22.JPG"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Tôi chưa gặp hàng thủ nào như vậy</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
      ");
                WriteLiteral(@"                              <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_09_15/2020_09_14T204400Z_1138021015_UP1EG9E1LLCKX_RTRMADP_3_SOCCER_ENGLAND_BRH_CHE_REPORT.JPG"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Brighton 1-3 Chelsea: 2 bàn thắng trong 2 phút</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-i");
                WriteLiteral(@"mg-top"" src=""https://znews-photo.zadn.vn/w1024/Uploaded/natmzz/2020_09_14/02_smalling.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Những vụ chuyển nhượng sắp hoàn tất</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w1024/Uploaded/natmzz/2020_09_14/02_smalling.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                        ");
                WriteLiteral(@"                    <p class=""card-text"">Những vụ chuyển nhượng sắp hoàn tất</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class=""col-sm-12 col-md-6 col-lg-6  tttq"">
                <div class=""row "">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <div class=""Tieu-De ml-3"">
                            <h5>Tin tức tổng quát</h5>
                        </div>
                        <a class=""Item-Beetween-F"" href=""#"">
                            <div class=""card"">
                                <img class=""img-responsive img-news-common-F "" src=""https://znews-photo.zadn.vn/w660/Uploaded/mdf_drokxr/2020_09_15/depay_1.jpg"" class=""rounded-sm"" alt=""Quế Trân"">
                                <div class=""TiT");
                WriteLiteral(@"ile-news-common-F"">
                                    <p>Barca chốt giá 30 triệu euro cho Depay</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>
                <div class=""row mt-5 "">
                    <div class=""col-lg-4 col-md-12 "">
                        <!-- <div class=""row"">
                            <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12""> -->
                        <div class=""card card-Common"">
                            <a");
                BeginWriteAttribute("href", " href=\"", 7335, "\"", 7342, 0);
                EndWriteAttribute();
                WriteLiteral(@">
                                <img class=""img-news-common-S"" src=""https://znews-photo.zadn.vn/w660/Uploaded/mdf_drokxr/2020_09_15/Neymar_3.JPG"" class=""card-img-top"" alt=""Quế Trân"">
                                <div class=""card-body"">
                                    <h5 class=""card-title"">Neymar: 'Tôi đã hành động như kẻ ngốc'</h5>
                                    <!-- <p class=""card-text"">Bla Bla Bla Bla Bla</p> -->
                            </a>
                        </div>
                    </div>
                    <!-- </div>
                    </div> -->
                </div>
                <div class=""col-lg-4 col-md-12"">
                    <!-- <div class=""row"">
                        <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12""> -->
                    <div class=""card card-Common"">
                        <a");
                BeginWriteAttribute("href", " href=\"", 8220, "\"", 8227, 0);
                EndWriteAttribute();
                WriteLiteral(@">
                            <img class=""img-responsive img-news-common-S"" src=""https://znews-photo.zadn.vn/w660/Uploaded/yrfjpyvslyr/2020_09_14/varan.jpg"" class=""card-img-top"" alt=""Phong My"">
                            <div class=""card-body"">
                                <h5 class=""card-title"">Varane chưa sẵn sàng thay thế Ramos</h5>
                                <!-- <p class=""card-text"">Bla Bla Bla Bla Bla</p> -->
                        </a>
                    </div>
                </div>
                <!-- </div>
                </div> -->
            </div>
            <div class=""col-lg-4 col-md-12"">
                <!-- <div class=""row"">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12""> -->
                <div class=""card card-Common"">
                    <a");
                BeginWriteAttribute("href", " href=\"", 9055, "\"", 9062, 0);
                EndWriteAttribute();
                WriteLiteral(@">
                        <img class=""img-responsive img-news-common-S"" src=""https://znews-photo.zadn.vn/w660/Uploaded/bpivpawv/2020_09_14/Sergio_Reguilon.jpg"" class=""card-img-top"" alt=""Quế Trân"">
                        <div class=""card-body"">
                            <h5 class=""card-title"">MU có thể sắp chốt thương vụ Reguilon</h5>
                            <!-- <p class=""card-text"">Bla Bla Bla Bla Bla</p> -->
                    </a>
                </div>
            </div>
            <!-- </div>
            </div> -->
        </div>
    </div>



    <div class=""row mt-5"">
        <div class=""col-xs-12 hidden-md col-sm-12 col-md-12 col-lg-12"">
            <div class=""card bg-dark text-white"">
                <img class=""img-KM"" src=""https://vnanet.vn/Data/Articles/2019/09/05/4061032/vna_potal_vong_loai_world_cup_2022_-_viet_nam_va_thai_lan_co_dong_vien_viet_nam_den_san_san_van_dong_thammasa_tiep_lua_cho_doi_tuyen_182123973_stand.jpg"" class=""card-img"" alt=""..."">
                <d");
                WriteLiteral(@"iv class=""card-img-overlay"">
                    <h5 class=""card-title"">Khung Giờ Khuyến Mãi Vé Xem Bóng Đá</h5>
                    <p class=""card-text"">
                        9:00 --> 10:00 Thứ 2, 4, 6 Hằng tuần<br>
                        Nhanh Chân lên nào, kiếm cho mình một chỗ ngồi thuận lợi để thưởng thức những trận cầu đỉnh cao
                    </p>
                    <p class=""card-text"">Last updated 3 mins ago</p>
                </div>
            </div>

        </div>
    </div>

    </div>

    <div class=""col-sm-12 col-md-6 col-lg-4"">
        <div class=""title"">
            <div class=""row"">
                <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                    <div class=""Tieu-De"">
                        <h5>Lịch thi đấu</h5>
                    </div>
                    <div class=""row"">
                        <table class=""table table-hover"">
                            <thead class=""thead-dark"">
                                <tr>
     ");
                WriteLiteral(@"                               <th scope=""col"">Đội Bóng</th>
                                    <th scope=""col""></th>
                                    <th scope=""col""></th>
                                    <th scope=""col"">Lịch</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td scope=""row"">
                                        <ul>
                                            <li><p class=""title-ltđ""><b>1.</b> Everton</p></li>
                                            <li><p class=""title-ltđ""><b>2.</b> West Brom</p> </li>
                                        </ul>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <p class=""title-ltđ"">
                                           ");
                WriteLiteral(@" Hôm nay<br>
                                            20:00
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td scope=""row"">
                                        <ul>
                                            <li><p class=""title-ltđ""><b>1.</b> Everton</p></li>
                                            <li><p class=""title-ltđ""><b>2.</b> West Brom</p> </li>
                                        </ul>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <p class=""title-ltđ"">
                                            Hôm nay<br>
                                            20:00
                                        </p>
                                    </td>
          ");
                WriteLiteral(@"                      </tr>
                                <tr>
                                    <td scope=""row"">
                                        <ul>
                                            <li><p class=""title-ltđ""><b>1.</b> Everton</p></li>
                                            <li><p class=""title-ltđ""><b>2.</b> West Brom</p> </li>
                                        </ul>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <p class=""title-ltđ"">
                                            Hôm nay<br>
                                            20:00
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td scope=""row"">
                                        <ul");
                WriteLiteral(@">
                                            <li><p class=""title-ltđ""><b>1.</b> Everton</p></li>
                                            <li><p class=""title-ltđ""><b>2.</b> West Brom</p> </li>
                                        </ul>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <p class=""title-ltđ"">
                                            Hôm nay<br>
                                            20:00
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>





            <hr>
            <div class=""row"">
                <div class=""col-xs-12 col-sm-6 col-md-12 col-lg-12"">
                    <div c");
                WriteLiteral(@"lass=""Tieu-De"">
                        <h5>Bảng Xếp Hạng</h5>
                    </div>

                    <div class=""row"">
                        <table class=""table table-bordered table-hover text-center"">
                            <thead class=""thead-dark"">
                                <tr class=""text-center "">
                                    <!-- align-middle canh chữ vào giữa theo chiều dọc -->
                                    <th class=""align-middle"">STT</th>
                                    <th class=""align-middle"">Đội bóng</th>
                                    <th class=""align-middle"">Điểm</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>

                             ");
                WriteLiteral(@"   <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <");
                WriteLiteral(@"td>Liverpool</td>
                                    <td>100</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Liverpool</td>
                                    <td>100</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- HIểN THỊ Ở MÀN HÌNH TABLET -->
            <div class=""row mt-5 "">
                <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12 hiden-lg visible-md"">
                    <div class=""card bg-dark text-white"">
                        <img class=""img-KM"" src=""https://vnanet.vn/Data/Ar");
                WriteLiteral(@"ticles/2019/09/05/4061032/vna_potal_vong_loai_world_cup_2022_-_viet_nam_va_thai_lan_co_dong_vien_viet_nam_den_san_san_van_dong_thammasa_tiep_lua_cho_doi_tuyen_182123973_stand.jpg"" class=""card-img"" alt=""..."">
                        <div class=""card-img-overlay"">
                            <h5 class=""card-title"">Khung Giờ Khuyến Mãi Vé Xem Bóng Đá</h5>
                            <p class=""card-text"">
                                9:00 --> 10:00 Thứ 2, 4, 6 Hằng tuần<br>
                                Nhanh Chân lên nào, kiếm cho mình một chỗ ngồi thuận lợi để thưởng thức những trận cầu đỉnh cao
                            </p>
                            <p class=""card-text"">Last updated 3 mins ago</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- HIỂN THỊ Ở MÀN HÌNH TABLET -->
    <div class=""container"">
        <div class=""row mt-3"">
            <div class=""col-sm-12 hiden-");
                WriteLiteral(@"lg visible-md col-lg-2"">
                <div class=""row wrap-hot-news "">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <div class=""Tieu-De "">
                            <h4>Tin tức nóng</h4>
                        </div>
                        <div class=""row margin-Hot-news"">

                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/neg_etpyole/2020_09_15/Bellingham_1.JPG"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Bellingham đi vào lịch sử Dortmund</p>
                                        </div>
                                    </div>
                          ");
                WriteLiteral(@"      </a>
                            </div>

                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/yrfjpyvslyr/2020_09_11/messi.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Messi có một tỷ USD thu nhập</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                      ");
                WriteLiteral(@"              <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_09_15/22.JPG"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Tôi chưa gặp hàng thủ nào như vậy</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_09_15/2020_09_14T204400Z_1138021015_UP1EG9E1LLCKX_RTRMADP_3_SOCCER_ENGLAND_BRH_CHE_REPORT.JPG"" alt=""Card image cap"">
                    ");
                WriteLiteral(@"                    <div class=""card-body "">
                                            <p class=""card-text"">Brighton 1-3 Chelsea: 2 bàn thắng trong 2 phút</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class=""row margin-Hot-news"">
                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w1024/Uploaded/natmzz/2020_09_14/02_smalling.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Những vụ chuyển nhượng sắp hoàn tất</p>
                                        </div");
                WriteLiteral(@">
                                    </div>
                                </a>
                            </div>
                            <div class=""col-xs-6 col-sm-6 col-md-6 col-lg-6"">
                                <a class=""Tiltle-Left"" href=""#"">
                                    <div class=""card card-hot-news"">
                                        <img class=""card-img-top"" src=""https://znews-photo.zadn.vn/w1024/Uploaded/natmzz/2020_09_14/02_smalling.jpg"" alt=""Card image cap"">
                                        <div class=""card-body "">
                                            <p class=""card-text"">Những vụ chuyển nhượng sắp hoàn tất</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src=""https://code.jquery.com/jqu");
                WriteLiteral(@"ery-3.5.1.slim.min.js"" integrity=""sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"" crossorigin=""anonymous""></script>
    <script src=""../Đồ Án 2/popper.min.js""></script>
    <script src=""https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"" integrity=""sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"" crossorigin=""anonymous""></script>
    <script src=""https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"" integrity=""sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"" crossorigin=""anonymous""></script>
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n</html>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<HomeModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
