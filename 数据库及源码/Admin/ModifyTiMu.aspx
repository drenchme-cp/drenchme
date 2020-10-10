<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyTiMu.aspx.cs" ValidateRequest="false" EnableEventValidation="false"      Inherits="Teachter_ModifyTiMu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>计算机网络在线课堂</title>
  <link rel="stylesheet" type="text/css" href="style/common.css"/>
      <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload_json.ashx',
				fileManagerJson : 'file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
      修改题目信息</td>
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
                        <tr>
                            <td align="center" style="width: 131px; height: 25px">
                                分数：</td>
                            <td style="height: 25px">
                                <asp:TextBox ID="txtScore" runat="server" ReadOnly="True">2</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 131px">
                                题目：</td>
                            <td>
                                <textarea id="content1" runat="server" cols="100" rows="8" style="visibility: hidden;
                                    width: 100%; height: 200px"></textarea></td>
                        </tr>
                        <tr>
                            <td align="center" nowrap="nowrap" style="width: 131px">
                                答案A：</td>
                            <td id="TD4" runat="server">
                                <asp:TextBox ID="txtAnswerA" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnswerA"
                                    ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="center" style="width: 131px">
                                答案B：</td>
                            <td id="TD5" runat="server">
                                <asp:TextBox ID="txtAnswerB" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnswerB"
                                    ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="center" style="width: 131px">
                                答案C：</td>
                            <td id="TD2" runat="server">
                                <asp:TextBox ID="txtAnswerC" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswerC"
                                    ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 131px; height: 59px">
                                答案D：</td>
                            <td id="TD1" runat="server" style="height: 59px">
                                <asp:TextBox ID="txtAnswerD" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnswerD"
                                    ErrorMessage="不能为空！"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" height="10" style="width: 131px">
                                答案：</td>
                            <td id="TD3" runat="server">
                                <asp:DropDownList ID="ddlAnswer" runat="server" Font-Size="9pt" Width="43px">
                                    <asp:ListItem Value="A">A</asp:ListItem>
                                    <asp:ListItem Value="B">B</asp:ListItem>
                                    <asp:ListItem Value="C">C</asp:ListItem>
                                    <asp:ListItem Value="D">D</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" height="10" style="width: 131px">
                                参考答案：</td>
                            <td id="TD6" runat="server">
                                <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="775px"></asp:TextBox></td>
                        </tr>
                        <tr align="center" height="50">
                            <td colspan="2">
                                <asp:Label ID="lblMessage" runat="server" ForeColor="red"></asp:Label><br />
                                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="保存" /></td>
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
