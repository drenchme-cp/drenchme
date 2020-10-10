<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SelectPage.aspx.cs" Inherits="SelectPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" CellPadding="5" DataKeyNames="ShiJuanID" OnPageIndexChanging="GvInfo_PageIndexChanging"
        OnRowDataBound="GvInfo_RowDataBound" Width="100%">
        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
        <RowStyle HorizontalAlign="Left" />
        <Columns>
            <asp:TemplateField HeaderText="试卷名称">
                <ItemTemplate>
                    <asp:Label ID="ShiJuanName" runat="server" Text='<%# Bind("ShiJuanName") %>' Width="299px"></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" Width="80px" />
            </asp:TemplateField>
             
            <asp:TemplateField HeaderText="试卷分数">
                <ItemTemplate>
                    <asp:Label ID="PageFen" runat="server" Text='<%# Bind("PageFen") %>' Width="69px"></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="进入测试页面">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ShowPage.aspx?id="+Eval("ShiJuanID") %>'
                        Text="进入测试页面" Width="136px"></asp:HyperLink>
                </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
            </asp:TemplateField>
        </Columns>
        <PagerTemplate>
            <table border="0" width="100%">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                            CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                        共
                        <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                        第
                        <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                    </td>
                    <td align="right" width="20%">
                    </td>
                </tr>
            </table>
        </PagerTemplate>
        <HeaderStyle BackColor="#F6F6F6" />
    </asp:GridView>
    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
 测试练习</asp:Content>
