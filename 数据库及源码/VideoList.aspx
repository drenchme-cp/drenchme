<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoList.aspx.cs" Inherits="VideoList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                        </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                            Width="99%">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <a class="highlightit" href='VideoInfo.aspx?id=<%#Eval("id") %>'>
                                                <img alt="" border="0" src='files/<%#Eval("ShiPinPhoto")%>' style="width: 169px;
                                                    height: 151px" /></a></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <a href='TuPianInfo.aspx?id=<%#Eval("id") %>'>
                                                <%#Eval("name")%>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                        height: 38px">
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
            </tbody>
        </table>
</asp:Content>
 

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   教学视频</asp:Content>
