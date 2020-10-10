<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPage.aspx.cs" Inherits="Teachter_AddPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>计算机网络在线课堂</title>
  <link rel="stylesheet" type="text/css" href="style/common.css"/>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      生成试卷</td>
 </tr>
</table>
     <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" height="36">
                    &nbsp;<table align="center" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
                        width: 100%; font-family: Tahoma; border-collapse: collapse">
                       
                        <tr style="color: #000000">
                            <td align="left" style="width: 97px; height: 35px">
                                试卷名称：</td>
                            <td align="left" style="width: 294px; height: 35px">
                                <asp:TextBox ID="TextBox4" runat="server" Width="361px"></asp:TextBox></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 97px; height: 35px">
                                单选题数量：</td>
                            <td align="left" style="width: 294px; height: 35px">
                                <asp:TextBox ID="TextBox1" runat="server" Width="80px">10</asp:TextBox></td>
                        </tr>
                      
                        <tr style="color: #000000">
                            <td align="left" style="width: 97px; height: 34px">
                                试题总分：</td>
                            <td align="left" style="width: 294px; height: 34px">
                                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="80px">100</asp:TextBox></td>
                        </tr>
                        <tr align="center" height="55">
                            <td colspan="2">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
                                <asp:Button ID="Button2" runat="server" class="button" OnClick="Button2_Click" Text="预览试卷" />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="保存试卷" /></td>
                        </tr>
                        <tr align="center" height="55">
                            <td align="left" colspan="2">
                                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                    ForeColor="#333333" GridLines="None" Width="100%">
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="一、选择题">
                                            <ItemTemplate>
                                                <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" width="100%">
                                                    <tr>
                                                        <td colspan="3">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","{0}") %>'>
													                </asp:Label>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ID") %>' Visible="False">
													                </asp:Label>
                                                            本题分数：
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mark") %>'>
													                </asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton1" runat="server" Enabled="False" GroupName="Sl"
                                                                Text='<%# Eval("AnswerA") %>' /></td>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton2" runat="server" Enabled="False" GroupName="Sl"
                                                                Text='<%# Eval("AnswerB") %>' /></td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton3" runat="server" Enabled="False" GroupName="Sl"
                                                                Text='<%# Eval("AnswerC") %>' /></td>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton4" runat="server" Enabled="False" GroupName="Sl"
                                                                Text='<%# Eval("AnswerD") %>' /></td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                        HorizontalAlign="Left" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                </asp:GridView>
                                &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr align="center" height="55">
                            <td align="center" colspan="2" style="height: 31px">
                                </td>
                        </tr>
                    </table>
                   
                </td>
            </tr>
            <tr align="right" bgcolor="#eef4ea">
                <td align="center" colspan="10" height="36">
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
