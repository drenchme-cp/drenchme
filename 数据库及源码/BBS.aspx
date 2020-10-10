<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BBS.aspx.cs" Inherits="BBS" Title="Untitled Page" %>

<%@ Register Src="PageCtrl.ascx" TagName="PageCtrl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="topic" style="background-image: url(Images/bar_bg1.gif); background-repeat: repeat-x; font-size: 15px; color: #ffffff;">
                                    &nbsp; &nbsp; &nbsp; &nbsp;论坛信息</div>
<table style="width:100%;">
                <tr>
                    <td style="height: 34px" align="center">
                        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">发布信息</asp:LinkButton></td>
                </tr>
                <tr>
                    <td style="text-align: left;" valign="top" align="left">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                            CellPadding="0" CellSpacing="0" DataSourceID="SqlDataSource1" EmptyDataText="暂无信息"
                            PageSize="20" Width="100%">
                            <Columns>
                              
                                  
                             
                             <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ShowTopic.aspx?id={0}"
                                    DataTextField="Topic" HeaderText="标题">
                                    <HeaderStyle Height="30px" Width="200px" />
                                    <ItemStyle Height="30px" Width="200px" />
                                </asp:HyperLinkField>
                              
                                <asp:BoundField DataField="AddUser" HeaderText="提问人">
                                    <HeaderStyle Height="30px" Width="100px" />
                                    <ItemStyle Height="30px" Width="100px" />
                                </asp:BoundField>
                                    
                                    <asp:BoundField DataField="HuifuTimes" HeaderText="回复数量">
                                    <HeaderStyle Height="30px" Width="100px" />
                                    <ItemStyle Height="30px" Width="100px" />
                                </asp:BoundField>
                                
                                <asp:BoundField DataField="Addtime" DataFormatString="{0:d}" HeaderText="时间">
                                    <HeaderStyle Height="30px" Width="100px" />
                                    <ItemStyle Height="30px" Width="100px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                        </asp:SqlDataSource>
                        <uc1:PageCtrl ID="PageCtrl1" runat="server" />
                        
                    </td>
                </tr>
            </table>
</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   在线交流</asp:Content>
