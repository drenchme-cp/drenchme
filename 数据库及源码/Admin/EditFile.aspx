<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditFile.aspx.cs"  ValidateRequest="false" EnableEventValidation="false" Inherits="Admin_EditFile" %>
 

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
    <table width="98%" border="0" cellpadding="0" cellspacing="1"  align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      修改课件</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center"  border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr>
                <td align="center" class="td2" style="width: 124px; height: 21px">
                    信息标题：</td>
                <td class="td2" colspan="3" style="height: 21px">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="label" Width="558px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" class="td2" style="width: 124px; height: 21px">
                    上传文件：</td>
                <td align="left" class="td2" colspan="3" style="height: 21px">
                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                        id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                            ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                            OnClick="Button1_Click" Text="上传" Width="58px" /><asp:Label ID="Label1" runat="server"
                                Visible="False" Width="60px"></asp:Label><input id="Hidden1" runat="server" type="hidden" />
                     ）</td>
            </tr>
            <tr>
                <td align="center" class="td2" style="width: 124px; height: 54px">
                   内容说明：</td>
                <td class="td2" colspan="7" style="width: 606px; height: 54px">
                    <textarea id="content1" runat="server" rows="8" style="visibility: hidden; width: 100%;
                        height: 200px"></textarea></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="添加" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
