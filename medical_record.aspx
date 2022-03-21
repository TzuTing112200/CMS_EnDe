<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medical_record.aspx.cs" Inherits="CMS_EnDe.medical_record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>病歷資料</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1 style="color:#0052CC">病歷資料</h1>
            <p>
                <asp:Label ID="label_id" runat="server" Text="編號："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_id" runat="server" Width="150px" Enabled="false"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label_name" runat="server" Text="姓名："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_name" runat="server" Width="150px" Enabled="false"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label_gender" runat="server" Text="性別："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_gender" runat="server" Width="150px" Enabled="false"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_phone" runat="server" Text="電話："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_phone" runat="server" Width="150px" Enabled="false"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label_work" runat="server" Text="職業："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_work" runat="server" Width="150px" Enabled="false"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label_group" runat="server" Text="組別："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_group" runat="server" Width="150px" Enabled="false"></asp:TextBox>
            </p>

            <p>
                <asp:Button ID="button_home" runat="server" Text="回首頁" OnClick="button_home_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="button_color" runat="server" Text="設定顏色" OnClick="button_color_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="button_create" runat="server" Text="新增病歷" OnClick="button_create_Click" />
            </p>

            <div style="width:700px;margin:0 auto;text-align:left;">
                <div style="width:150px;height:400px;overflow-y:scroll;margin:0 auto;background-color:#F8F8F8;cursor:default;float:left;">
                    <asp:CheckBoxList style="float:left;" ID="checkboxlist_group_members" runat="server" Width="120px" AutoPostBack="True" OnSelectedIndexChanged="checkboxlist_group_members_SelectedIndexChanged"></asp:CheckBoxList>
                </div>
                <div style="width:550px;height:400px;overflow-y:scroll;margin:0 auto;background-color:#F8F8F8;cursor:default;float:left;">
                    <asp:gridview style="word-break:break-all;word-wrap:break-word" runat="server" ID="gridview_records" BackColor="White" BorderColor="#0052CC" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowDataBound ="gridview_records_RowDataBound" EmptyDataText="無資料" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:TemplateField HeaderText="日期">
                                <ItemTemplate>
                                    <%#Eval("Date") %>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="姓名">
                                <ItemTemplate>
                                    <%#Eval("Name") %>
                                </ItemTemplate>
                                <HeaderStyle Width="80px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="診療狀況">
                                <ItemTemplate>
                                    <%#Eval("Note") %>
                                </ItemTemplate>
                                <HeaderStyle Width="280px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="收費">
                                <ItemTemplate>
                                    <span style="float:right;">$<%#Eval("Charge") %>&nbsp;</span>
                                </ItemTemplate>
                                <HeaderStyle Width="60px" HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#0052CC" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#0052CC" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:gridview>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
