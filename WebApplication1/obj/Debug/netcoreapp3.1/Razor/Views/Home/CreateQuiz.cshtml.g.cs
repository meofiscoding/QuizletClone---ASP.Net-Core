#pragma checksum "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5f587de871caec65afef595992ea06dc767e412a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_CreateQuiz), @"mvc.1.0.view", @"/Views/Home/CreateQuiz.cshtml")]
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
#line 1 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\_ViewImports.cshtml"
using WebApplication1;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\_ViewImports.cshtml"
using WebApplication1.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5f587de871caec65afef595992ea06dc767e412a", @"/Views/Home/CreateQuiz.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"729efaa87342638aecfe1a972ce9f9f8dff55b4c", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_CreateQuiz : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<WebApplication1.Models.SetStudy>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/img/science.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:5%;height:5%"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("card-img"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString("Card image"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:5%;height:25%"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("text-warning"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Payment", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "QuizletPlus", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
  
    ViewData["Title"] = "Create Quiz";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<style>
    #form12 {
        border-top: none;
        border-bottom: 2px solid white;
        border-left: none;
        border-radius: 0;
        border-right: none;
        width: 40rem;
        background-color: black;
    }

    #form1 {
        border-top: none;
        border-bottom: 2px solid white;
        border-left: none;
        border-radius: 0;
        border-right: none;
        width: 30rem;
    }

        #form1:focus {
            outline: none;
            border-bottom: 3px solid #ffcd1f;
        }

    input:focus {
        outline: none;
    }

</style>
");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"
<script>//transfer Input
       const divs = document.querySelectorAll("".term"");
       const inputs = document.querySelectorAll(""#getTerm"");
          divs.forEach((div,index ) => {
            div.addEventListener(""input"", function() {
            inputs[index].value =div.textContent.replace(/,/g, "";"");
    }, false)
    });

     //transfer Input
       const defs = document.querySelectorAll("".def"");
       const getDef = document.querySelectorAll(""#getDef"");
          defs.forEach((def,indexer ) => {
            def.addEventListener(""input"", function() {
            getDef[indexer].value =def.textContent.replace(/,/g, "";"");
    }, false)
    });
</script>
");
            }
            );
#nullable restore
#line 55 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
 using (Html.BeginForm("CreateQuiz", "Home", FormMethod.Post))
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5f587de871caec65afef595992ea06dc767e412a8288", async() => {
                WriteLiteral("\r\n\r\n        <div class=\"clearfix  mt-5 \">\r\n            <h1 class=\"text-warning float-left\">Create new Quiz ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5f587de871caec65afef595992ea06dc767e412a8659", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</h1>\r\n            <button class=\"btn sbmit-button btn-info float-right\" type=\"submit\">Create</button>\r\n        </div>\r\n\r\n        <div class=\"mt-3\">\r\n            <div>\r\n                ");
#nullable restore
#line 66 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
           Write(Html.TextBoxFor(model => model.Title, new {@required = "required", @type = "text", @id = "form12", @class = "mt-3 text-info h5 text-uppercase", @placeholder = "Nhập tiêu đề, ví dụ 'Sinh học - Chương 22: Tiến hóa'" }));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                <br />\r\n                <label class=\"text-light\">Title</label>\r\n                <br />\r\n                ");
#nullable restore
#line 70 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
           Write(Html.TextBoxFor(model => model.Description, new {@required = "required", @type = "text", @id = "form12", @class = "mt-3 text-info h5", @placeholder = "Thêm mô tả..." }));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                <br />
                <label class=""text-light"">Description</label>
            </div>
        </div>

        <div class=""container mt-3"">
            <div class=""card bg-dark text-white"" style=""display: flex; justify-content: center; align-items: center; height: 10rem; background: url('https://i.pinimg.com/564x/71/e0/5b/71e05bdd110f7a9b0ffb59ff688a0237.jpg')"">
                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "5f587de871caec65afef595992ea06dc767e412a11440", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                <div class=\"card-img-overlay\">\r\n                    <h5 class=\"card-title text-light\">Drag and drop a picture to adding a diagram</h5>\r\n");
#nullable restore
#line 81 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                     if (@TempData.Peek("isNormal").Equals("normal"))
                    {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <p class=\"card-text\"><i class=\"fas fa-lock\"></i> Unlock this feature with ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5f587de871caec65afef595992ea06dc767e412a13362", async() => {
                    WriteLiteral("QuizletPlus");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_6.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_7.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</p>\r\n");
#nullable restore
#line 84 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                    }
                    else
                    {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <a class=\"text-warning\">Choose a picture</a>\r\n");
#nullable restore
#line 88 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                    }

#line default
#line hidden
#nullable disable
                WriteLiteral("                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"container mt-3\">\r\n            <div class=\"clearfix\">\r\n                ");
#nullable restore
#line 94 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
           Write(Html.DropDownList("Visibility", @ViewBag.Visibility as List<SelectListItem>, "---Change Visibility---", new { @class = "form-select text-light bg-dark mx-3 float-right" }));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n            </div>\r\n            <div class=\"card-group mt-1 \" style=\"display:flex;flex-direction:column\">\r\n");
#nullable restore
#line 97 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                 for (int i = 1; i < 6; i++)
                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                    <div class=\"card bg-dark text-light my-3\">\r\n                        <div class=\"card-header clearfix\">\r\n                            <p class=\"float-left\">");
#nullable restore
#line 101 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                                             Write(i);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"</p>
                        </div>
                        <div class=""card-body"" style=""display:flex;justify-content:space-between"">
                            <div>
                                <div class=""mt-3 text-light bg-dark h5 term"" contenteditable=""true"" id=""form1"" required=""required"" type=""text"" role=""textbox"" aria-multiline=""true""></div>
                                ");
#nullable restore
#line 106 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                           Write(Html.TextBox("Term", null, new {@type = "hidden", @id="getTerm"}));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                                <label class=""text-light"">Term</label>
                            </div>
                            <div>
                                <div class=""mt-3 text-light bg-dark h5 def"" contenteditable=""true"" id=""form1"" required=""required"" type=""text"" role=""textbox"" aria-multiline=""true"" aria-required=""true""></div>
                                ");
#nullable restore
#line 111 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                           Write(Html.TextBox("Def", null, new {@type = "hidden", @id="getDef"}));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                                <label class=""text-light"">Definition</label>
                                <div class=""clearfix"">
                                    <div style=""border:dotted;display:flex;flex-direction:column;align-items:center"" class=""float-right"">
                                        <i class=""far fa-image py-1 px-2 ""></i>
                                        <p class=""px-2 "">Add Image</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
");
#nullable restore
#line 122 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                }

#line default
#line hidden
#nullable disable
                WriteLiteral("                <div>\r\n");
#nullable restore
#line 124 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                     for (int i = 6; i <= 20; i++)
                    {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <div class=\"card bg-dark text-light my-3\">\r\n                            <div class=\"card-header clearfix\">\r\n                                <p class=\"float-left\">");
#nullable restore
#line 128 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                                                 Write(i);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"</p>
                            </div>
                            <div class=""card-body"" style=""display:flex;justify-content:space-between"">
                                <div>
                                    <div class=""mt-3 text-light bg-dark h5 term"" contenteditable=""true"" id=""form1"" name=""Term"" type=""text"" role=""textbox"" aria-multiline=""true"" aria-required=""true""></div>
                                    ");
#nullable restore
#line 133 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                               Write(Html.TextBox("Term", null, new {@type = "hidden", @id="getTerm"}));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                                    <label class=""text-light"">Term</label>
                                </div>
                                <div>
                                    <div class=""mt-3 text-light bg-dark h5 def"" contenteditable=""true"" id=""form1"" name=""Def"" type=""text"" role=""textbox"" aria-multiline=""true"" aria-required=""true""></div>
                                    ");
#nullable restore
#line 138 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                               Write(Html.TextBox("Def", null, new {@type = "hidden", @id="getDef"}));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                                    <label class=""text-light"">Definition</label>
                                    <div class=""clearfix"">
                                        <div style=""border:dotted;display:flex;flex-direction:column;align-items:center"" class=""float-right"">
                                            <i class=""far fa-image py-1 px-2 ""></i>
                                            <p class=""px-2 "">Add Image</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
");
#nullable restore
#line 149 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
                    }

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                    <div class=""card text-white bg-primary mb-3"">
                        <div class=""card-body"" style=""display: flex; flex-direction: column; align-items: center;"">
                            <h5 class=""card-title"">Add new Card</h5>
                            <i class=""fas fa-plus-square fa-2x"" style=""cursor:pointer""></i>
                        </div>
                    </div>

                </div>
            </div>
    ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
#nullable restore
#line 161 "C:\Users\trath\Source\Repos\QuizletClone---ASP.Net-Core\WebApplication1\Views\Home\CreateQuiz.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebApplication1.Models.SetStudy> Html { get; private set; }
    }
}
#pragma warning restore 1591
