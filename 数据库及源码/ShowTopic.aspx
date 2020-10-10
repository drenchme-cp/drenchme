<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowTopic.aspx.cs" ValidateRequest="false" EnableEventValidation="false"    Inherits="ShowTopic" Title="Untitled Page" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div id="topic" style="background-image: url(Images/bar_bg1.gif); background-repeat: repeat-x; font-size: 15px; color: #ffffff;">
                                    &nbsp; &nbsp; &nbsp; &nbsp;问题内容</div> <table style="width: 100%">
        <tr>
            <td align="left" style="  text-align: left; height: 40px;">
                问题标题：<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" style=" text-align: left">
                <asp:Image ID="Image1" runat="server" Width="145px" /></td>
        </tr>
        <tr>
            <td style=" text-align: center">
                提问人：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                提问时间：<asp:Label ID="Label2" runat="server"></asp:Label>回复次数：<asp:Label ID="Label6" runat="server"></asp:Label>阅读次数：<asp:Label
                        ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="  text-align: left;"  valign="top">
               <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
                                        <tr>
                                            <td align="center" style="height: 22px; text-align: center" valign="top">
                                                回复信息</td>
                                        </tr>
        <tr>
            <td  style="  text-align: left;" align="left" valign="top">
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 100%">
                              
                                    用户：<%#Eval("ReplayUser") %>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%">
                                    回复内容：<%#Eval("Replay") %>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%">
                                    回复时间：<%#Eval("AddTime","{0:d}") %>
                                </td>
                            </tr>
                        </table>
                        <hr />
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="center" style="  text-align: center" valign="top">
                共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   在线交流</asp:Content>
