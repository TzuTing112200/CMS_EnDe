<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create_customer.aspx.cs" Inherits="CMS_EnDe.create_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增顧客資料</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1 style="color:#336666">新增顧客資料</h1>
            <p>
                <asp:Label ID="label_id" runat="server" Text="編號："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_id" runat="server" Enabled="false"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_name" runat="server" Text="姓名："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_name" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_gender" runat="server" Text="性別："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_gender" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_phone" runat="server" Text="電話："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_phone" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_work" runat="server" Text="職業："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_work" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_group" runat="server" Text="組別："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_group" runat="server"></asp:TextBox>
            </p> 
            <p>
                <asp:Button ID="button_cancel" runat="server" Text="取消" OnClick="button_cancel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="button_submit" runat="server" Text="新增" OnClick="button_submit_Click" />
            </p>
        </div>
    </form>
</body>
</html>
