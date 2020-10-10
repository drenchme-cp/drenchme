<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPage.aspx.cs" Inherits="Teachter_ShowPage" %>

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
      显示试卷信息</td>
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
                    &nbsp;<table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
                        <tr>
                            <td align="center" colspan="4" nowrap="nowrap" style="height: 28px">
                                <asp:Label ID="lblShiJuanName" runat="server"></asp:Label>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="4" nowrap="nowrap" style="height: 28px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                    ForeColor="#333333" GridLines="None" Width="100%">
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <asp:Label ID="Label24" runat="server" Text="一、单选题">
                                            </asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" style="width: 101%">
                                                    <tr>
                                                        <td colspan="3">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex+1 %>'>
									                </asp:Label>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","、{0}") %>'>
									                </asp:Label>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Answer") %>' Visible="False">
									                </asp:Label>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mark") %>' Visible="false">
									                </asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl" Text='<%# Eval("AnswerA") %>' /></td>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sl" Text='<%# Eval("AnswerB") %>' /></td>
                                                        <td style="width: 50px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Sl" Text='<%# Eval("AnswerC") %>' /></td>
                                                        <td width="35%">
                                                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Sl" Text='<%# Eval("AnswerD") %>' /></td>
                                                        <td style="width: 50px">
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
                                 
                                &nbsp; &nbsp; &nbsp; &nbsp;
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
