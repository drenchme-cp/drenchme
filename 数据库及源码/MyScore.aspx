<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyScore.aspx.cs" Inherits="MyScore" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="registeInfo" width="100%">
        <tr>
            <td colspan="2" style="height: 35px">
                <uc1:Home ID="Home1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 35px">
                <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="GvInfo_PageIndexChanging"
                    OnRowDataBound="GvInfo_RowDataBound" OnRowDeleting="GvInfo_RowDeleting" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="试卷">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"><%# Eval("ShiJuanName") %></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Wrap="False" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="成绩">
                            <ItemTemplate>
                                <asp:Label ID="Score" runat="server"><%# Eval("Score")%></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Wrap="False" />
                        </asp:TemplateField>
                         
                        <asp:TemplateField HeaderText="考试时间">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server"><%# Eval("ExamTime") %></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Wrap="False" />
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
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
 我的测试成绩</asp:Content>

