<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowPage.aspx.cs" Inherits="ShowPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
        <tr>
            <td align="center" colspan="4" nowrap="nowrap" style="height: 28px">
                试卷名称：<asp:Label ID="lblShiJuanName" runat="server"></asp:Label>
                试卷总分数：<asp:Label ID="Label15" runat="server"></asp:Label>&nbsp;
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
                                <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" style="width: 100%">
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex+1 %>'>
									                </asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","、{0}") %>'>
									                </asp:Label>
                                            <asp:Label ID="Label111" runat="server" Text='<%# Eval("ID") %>'>
													                </asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Answer") %>' Visible="False">
									                </asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mark") %>' Visible="false">
									                </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200">
                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl" Text='<%# Eval("AnswerA") %>' /></td>
                                        <td width="200">
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
                &nbsp;&nbsp;
                 
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" nowrap="nowrap" style="height: 28px">
                &nbsp;<input id="Button1" runat="server" class="button" name="Submit" onserverclick="Button1_ServerClick1"
                    style="width: 90px" type="button" value="提交试卷" /></td>
        </tr>
    </table>
</asp:Content>

