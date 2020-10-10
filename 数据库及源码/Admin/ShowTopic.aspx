<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTopic.aspx.cs" ValidateRequest="false" EnableEventValidation="false"  Inherits="Teachter_ShowTopic" %>

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
      回复问题</td>
 </tr>
</table>
     <table style="width: 100%">
         <tr>
             <td align="left" style="height: 40px; text-align: left">
                 问题标题：<asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
         </tr>
         <tr>
             <td align="left" style="text-align: left">
                 <asp:Image ID="Image1" runat="server" Width="145px" /></td>
         </tr>
         <tr>
             <td style="text-align: center">
                 提问人：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                 提问时间：<asp:Label ID="Label2" runat="server"></asp:Label>回复次数：<asp:Label ID="Label6"
                     runat="server"></asp:Label>阅读次数：<asp:Label ID="Label7" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td style="text-align: left" valign="top">
                 <asp:Label ID="Label3" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td align="left" style="text-align: left" valign="top">
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
             <td align="center" style="text-align: center" valign="top">
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
             <td align="left" style="height: 119px; text-align: left" valign="top">
                 <textarea id="content1" runat="server" rows="8" style="visibility: hidden; width: 99%;
                     height: 200px"></textarea></td>
         </tr>
         <tr>
             <td align="center" valign="top">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回复" /></td>
         </tr>
     </table>
</td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
