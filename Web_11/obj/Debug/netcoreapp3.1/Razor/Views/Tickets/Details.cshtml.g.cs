#pragma checksum "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\Tickets\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "87c3923c84f1696a540ef2cac86b0949f2b3ea60"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Tickets_Details), @"mvc.1.0.view", @"/Views/Tickets/Details.cshtml")]
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
#line 1 "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\_ViewImports.cshtml"
using Web_11;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\_ViewImports.cshtml"
using Web_11.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"87c3923c84f1696a540ef2cac86b0949f2b3ea60", @"/Views/Tickets/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7c3107938e2543ce625f8860f97dc6c43a713e31", @"/Views/_ViewImports.cshtml")]
    public class Views_Tickets_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<TicketsViewsModel>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
<div class=""body1"">
    <div class=""container"">
        <marquee width=""100%"" behavior=""alternate"" direction=""left"">
            <div class=""row rounded-sm"">

                <!-- start cột 4 -->
                <div class=""col-xs-4 col-sm-4 col-md-4 col-lg-4 mt-3"">
                    <div class=""ngaygio"">
                        ");
#nullable restore
#line 11 "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\Tickets\Details.cshtml"
                   Write(Model.VeDuocChon.Thoigian);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                    </div>
                </div>
                <!-- end cột 4 -->
                <!-- start cột 8 -->
                <div class=""col-xs-8 col-sm-8 col-md-8 col-lg-8 mt-3 text-left"">
                    <div class=""haidoi mt-3"">
                        <h5>Vòng đấu 1: Liverpool vs Leeds</h5>
                    </div>
                </div>

                <!-- end cột 8 -->
            </div>
        </marquee>
    </div>
</div>

<!-- end body 1-->
<!-- start body 2 -->
<div class=""body2"">
    <div class=""container"">
        <div class=""row rounded-sm"">
            <div class=""col-sm-12 col-md-7 col-lg-7"">
                <div class=""row mb-5 mt-5 "">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <ul class=""Item-CĐ"">
                            <li class=""Title-CĐ"">
                                <img");
            BeginWriteAttribute("src", " src=\"", 1309, "\"", 1346, 1);
#nullable restore
#line 38 "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\Tickets\Details.cshtml"
WriteAttributeValue("", 1315, Model.VeDuocChon.srcLogoDoiNha, 1315, 31, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" class=""rounded-sm img-CĐ img-fluid"" alt=""Liverpool"">
                            </li>
                            <li class=""Title-CĐ Title-Vs"">
                                <p>VS</p>
                            </li>
                            <li class=""Title-CĐ"">
                                <img");
            BeginWriteAttribute("src", " src=\"", 1662, "\"", 1701, 1);
#nullable restore
#line 44 "C:\Users\Administrator\Desktop\WEB\Web_Group_11\Web_11\Web_11\Views\Tickets\Details.cshtml"
WriteAttributeValue("", 1668, Model.VeDuocChon.srcLogoDoiKhach, 1668, 33, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" class=""rounded-sm img-CĐ img-fluid"" alt=""MU"">
                            </li>
                        </ul>
                    </div>
                </div>
                <hr class=""ngan"">
                <div class=""row"">
                    <div class=""col-sm-12 col-md-12 col-lg-12"">
                        <table class=""table table-width table-hover"">
                            <thead class=""thead-dark"">
                                <tr>
                                    <!-- <th scope=""col"">STT</th> -->
                                    <th scope=""col"">loại vé</th>
                                    <th scope=""col"">Trạng thái</th>
                                    <th scope=""col"">Số lượng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <!-- <th scope=""row"">1</th> -->
                                    <td><div class=""item""><input");
            WriteLiteral(@" type=""checkbox"" class=""radio-item"" checked> Khán đài A</div></td>
                                    <td>Còn vé</td>
                                    <td><input type=""number"" style=""width:50px"" min=""0""></td>
                                </tr>
                                <tr>
                                    <!-- <th scope=""row"">2</th> -->
                                    <td> <div class=""item""><input type=""checkbox"" class=""radio-item""> Khán đài B</div></td>
                                    <td>Còn vé</td>
                                    <td><input type=""number"" style=""width:50px"" min=""0""></td>
                                </tr>
                                <tr>
                                    <!-- <th scope=""row"">3</th> -->
                                    <td><div class=""item""><input type=""checkbox"" class=""radio-item""> Khán đài C</div></td>
                                    <td>Còn vé</td>
                                    <td><input type=""number"" style");
            WriteLiteral(@"=""width:50px"" min=""0""></td>
                                </tr>
                                <tr>
                                    <!-- <th scope=""row"">3</th> -->
                                    <td><div class=""item""><input type=""checkbox"" class=""radio-item""> Khán đài D</div></td>
                                    <td>Còn vé</td>
                                    <td><input type=""number"" style=""width:50px"" min=""0""></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>


                <hr class=""ngan"">

                <div class=""row"">
                    <div class=""col-sm-12 col-md-12 col-lg-12"">
                        <div class=""alert alert-primary"" role=""alert"">
                            <div class=""item-tt""><input type=""checkbox"" class=""radio-item"" checked>Thanh Toán Trực Tiếp Bằng Tiền Mặt</div>
                        </div>
                        <d");
            WriteLiteral(@"iv class=""alert alert-success"" role=""alert"">
                            <div class=""item-tt""><input type=""checkbox"" class=""radio-item"">Thanh Toán Trực Tiếp Bằng Thẻ Ngân Hàng</div>
                        </div>
                    </div>
                </div>
            </div>


            <div class=""col-sm-12 col-md-5 col-lg-5 border-KC"">
                <div class=""row mb-2 mt-2 "">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <h2>Sơ đồ ra sân</h2>
                        <div class=""SĐCN"">
                            <img src=""https://media.thethao247.vn/origin_414x0/upload/vuongnh/2018/11/26/vexem.jpg"" class=""img-SDĐB pt-2 "">
                        </div>
                    </div>
                </div>
                <hr class=""ngan"">
                <div class=""row"">
                    <div class=""col-sm-12 col-md-12 col-lg-12"">
                        <table class=""table"">
                            <!-- <thead>
      ");
            WriteLiteral(@"                        <tr>
                                <th scope=""col"">#</th>
                                <th scope=""col"">First</th>
                                <th scope=""col"">Last</th>
                                <th scope=""col"">Handle</th>
                              </tr>
                            </thead> -->
                            <tbody>
                                <tr>
                                    <th scope=""row"">Vòng đấu 1:</th>
                                    <td></td>
                                    <td></td>
                                    <td>Liverpool vs Mu</td>
                                </tr>
                                <tr>
                                    <th scope=""row"">Mệnh giá:</th>
                                    <td></td>
                                    <td></td>
                                    <td>500-000đ-Khán đài A</td>
                                </tr>
                            </tbod");
            WriteLiteral(@"y>
                        </table>
                    </div>
                </div>
                <hr class=""ngan"">
                <div class=""row"">
                    <div class=""col-sm-12 col-md-12 col-lg-12"">
                        <table class=""table"">
                            <!-- <thead>
                              <tr>
                                <th scope=""col"">#</th>
                                <th scope=""col"">First</th>
                                <th scope=""col"">Last</th>
                                <th scope=""col"">Handle</th>
                              </tr>
                            </thead> -->
                            <tbody>
                                <tr>
                                    <th scope=""row"">Phí dịch vụ:</th>
                                    <td></td>
                                    <td></td>
                                    <td>0đ</td>
                                </tr>
                               ");
            WriteLiteral(@" <tr>
                                    <th scope=""row"">Phí vận chuyển:</th>
                                    <td></td>
                                    <td></td>
                                    <td>0đ</td>
                                </tr>
                                <tr>
                                    <th scope=""row"">Thành tiền:</th>
                                    <td></td>
                                    <td></td>
                                    <td>500.000đ</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>


                <hr class=""ngan"">
                <div class=""row text-center"">
                    <div class=""col-xs-12 col-sm-12 col-md-12 col-lg-12"">
                        <p>
                            <button class=""btn btn-primary"" type=""button"" data-toggle=""collapse"" data-target=""#collapseExample"" aria-expanded=""false"" a");
            WriteLiteral(@"ria-controls=""collapseExample"">
                                Điều khoản thanh toán
                            </button>
                        </p>
                        <div class=""collapse"" id=""collapseExample"">
                            <div class=""card card-body"">
                                -không hoàn trả tiền khi đã mua vé<br>
                                -Xuất trình vé khi đến sân xem bóng đá
                            </div>
                        </div>
                        <button class=""btn btn-danger nut"">Thanh Toán</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<TicketsViewsModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
