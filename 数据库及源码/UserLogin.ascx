<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserLogin.ascx.cs" Inherits="UserLogin" %>
<table width="100%">
    <tr>
        <td colspan="3" style="text-align: center; height: 20px;">
            <table id="Login2" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 183px">
                <tr>
                    <td style="height: 18px">
                    </td>
                    <td align="middle" style="height: 18px">
                    </td>
                </tr>
                <tr>
                    <td nowrap="nowrap">
                        <div align="right">
                            <span>帐号: </span>
                        </div>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtUserName" runat="server" ValidationGroup="3" Width="144px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <span>密码: </span>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" ValidationGroup="3"
                            Width="142px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                    </td>
                </tr>
                <tr>
                    <td>
                   <span>角色: </span> </td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>学生</asp:ListItem>
                           
                            <asp:ListItem>教师</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 26px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="用户登陆" ValidationGroup="3" />&nbsp;
                        </td>
                </tr>
            </table>
            <table id="Login1" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 191px">
                <tr>
                    <td style="width: 52px">
                    </td>
                    <td align="middle" style="width: 166px">
                    </td>
                </tr>
                <tr>
                    <td nowrap="nowrap" style="width: 52px; height: 20px;">
                        <div align="right">
                            <span>欢迎: </span>
                        </div>
                    </td>
                    <td align="left" style="width: 166px; height: 20px;">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td nowrap="nowrap" style="width: 52px; height: 20px">
                        角色：</td>
                    <td align="left" style="width: 166px; height: 20px">
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 26px">
                        <asp:Button ID="Button4" runat="server" CausesValidation="False" class="btn" OnClick="Button4_Click"
                            Text="注销" />
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click"
                            Text="用户中心" /></td>
                </tr>
            </table>
        </td>
    </tr>
</table>