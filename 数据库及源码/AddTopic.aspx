<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTopic.aspx.cs"  ValidateRequest="false" EnableEventValidation="false"  Inherits="AddTopic" Title="Untitled Page" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="topic" style="background-image: url(Images/bar_bg1.gif); background-repeat: repeat-x; font-size: 15px; color: #ffffff;">
                                    &nbsp; &nbsp; &nbsp; &nbsp;论坛提问</div> <table style="width: 100%">
        <tr>
            <td align="left" height="40" style="  text-align: left">
                问题标题：<asp:TextBox ID="tb_title" runat="server" MaxLength="100" Rows="1" Width="493px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_title"
                    ErrorMessage="标题必须填写"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style=" text-align: center">
                内容</td>
        </tr>
        <tr>
            <td style="height: 161px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Height="191px" TextMode="MultiLine" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" />&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   在线交流</asp:Content>


