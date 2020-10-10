<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileInfo.aspx.cs" Inherits="FileInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
        cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="center"   class="tabTitle" colspan="1" height="22"
                style="width: 100%">
                <b>
                    <asp:Label ID="Label2" runat="server" Width="96%"></asp:Label></b></td>
        </tr>
        <tr>
            <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                height: 22px">
                <asp:Label ID="Label1" runat="server" Width="71%"></asp:Label></td>
        </tr>
        <tr>
            <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                height: 22px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">下载</asp:LinkButton><input
                    id="Hidden1" runat="server" type="hidden" /><input id="Hidden2" runat="server" type="hidden" /><input
                        id="Hidden3" runat="server" type="hidden" /></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 100%; height: auto; text-align: left">
                <strong>
                    <div id="DIV1" runat="server" style="width: 100%; height: auto">
                    </div>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   资源下载</asp:Content>

