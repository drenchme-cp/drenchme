<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;最新教学视频
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
              
            
                 <TABLE class="table" cellSpacing="0" width="100%" style="height: auto">
              <TBODY>
             
              <TR>
                <TD class="spec">
                    <asp:DataList ID="DataList2" runat="server"   RepeatColumns="3" Width="100%">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td style="width: 204px; height: 162px">
                                        <a class="highlightit" href='VideoInfo.aspx?id=<%#Eval("id") %>'>
                                            <img alt="" border="0" src='files/<%#Eval("ShiPinPhoto")%>' style="width: 210px; height: 174px" /></a></td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 204px">
                                        <a href='VideoInfo.aspx?id=<%#Eval("id") %>'>
                                            <%#Eval("name").ToString().Length > 11 ? CutChar(Eval("name").ToString(), 11) + "..." : Eval("name")%>
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></TD></TR>
              </TBODY></TABLE>
              
              
                <div class="sitepath" style="left: 0px; top: 0px" width="100%">
    <h2>      最新课件</h2>
    <div class="io"> </div>
</div>
                 <TABLE class="table" cellSpacing="0" width="100%" style="height: auto">
              <TBODY>
             
              <TR>
                <TD class="spec">
                    <asp:DataList ID="DataList3" runat="server"   RepeatColumns="2" Width="100%">
                        <ItemTemplate>
                            <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" style="width: 329px">
                                  <a href='<%#Eval("id","FileInfo.aspx?id={0}")%>'>
                                        <%#Eval("TitleName").ToString().Length > 25 ? CutChar(Eval("TitleName").ToString(), 32) + "..." : Eval("TitleName")%>
                                    </a>
                                </td>
                                <td align="center" style="width: 140px">
                                    <asp:Label ID="Label2" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'
                                        Width="193px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </ItemTemplate>
                    </asp:DataList></TD></TR>
              </TBODY></TABLE>
</asp:Content>

