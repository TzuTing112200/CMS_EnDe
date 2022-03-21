<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CMS_EnDe.WebForm1" EnableEventValidation="false" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>恩德國術館顧客管理系統</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1 style="color:#336666">恩德國術館顧客管理系統</h1>
            <p>
                <asp:Label ID="label_search" runat="server" Text="關鍵字 (姓名、電話)："></asp:Label>&nbsp;
                <asp:TextBox ID="textbox_search" runat="server"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="button_search" runat="server" Text="搜尋" OnClick="button_search_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label_groups" runat="server" Text="組別："></asp:Label>&nbsp;
                <asp:DropDownList ID="dropdownlist_groups" runat="server" OnSelectedIndexChanged="dropdownlist_groups_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </p>

            <div style="width:600px;height:400px;overflow-y:scroll;margin:0 auto;background-color:#F8F8F8;cursor:default;">
                <asp:gridview runat="server" ID="gridview_customers" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowDataBound ="gridview_customers_RowDataBound" OnSelectedIndexChanged="gridview_customers_SelectedIndexChanged" EmptyDataText="無資料" ShowHeaderWhenEmpty="True">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="button_update" runat="server" OnClick="button_update_Click" 
                                            Text="修改" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="編號">
                            <ItemTemplate>
                                <asp:Label ID="label_id" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="75px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="姓名">
                            <ItemTemplate>
                                <asp:Label ID="label_name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="性別">
                            <ItemTemplate>
                                <asp:Label ID="label_gender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="電話">
                            <ItemTemplate>
                                <asp:Label ID="label_phone" runat="server" Text='<%#Eval("Phone") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="120px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="職業">
                            <ItemTemplate>
                                <asp:Label ID="label_work" runat="server" Text='<%#Eval("Work") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="120px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="組別">
                            <ItemTemplate>
                                <asp:Label ID="label_group" runat="server" Text='<%#Eval("Group") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:gridview>
            </div>

            <p>
                <asp:Button ID="button_create" runat="server" Text="新增顧客資料" OnClick="button_create_Click" />
            </p>
        </div>
    </form>
</body>

</html>
