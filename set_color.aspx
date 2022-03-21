<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_color.aspx.cs" Inherits="CMS_EnDe.set_color" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1 style="color:#0052CC">設定顏色關鍵字</h1>
            <p>
                <asp:Label ID="label1" runat="server" Text="顏色 01"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label2" runat="server" Text="顏色 02"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox2" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label3" runat="server" Text="顏色 03"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox3" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label4" runat="server" Text="顏色 04"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox4" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label5" runat="server" Text="顏色 05"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox5" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label6" runat="server" Text="顏色 06"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox6" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label7" runat="server" Text="顏色 07"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox7" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label8" runat="server" Text="顏色 08"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox8" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label9" runat="server" Text="顏色 09"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox9" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label10" runat="server" Text="顏色 10"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox10" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label11" runat="server" Text="顏色 11"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox11" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label12" runat="server" Text="顏色 12"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox12" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Button ID="button_cancel" runat="server" Text="取消" OnClick="button_cancel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="button_submit" runat="server" Text="確定" OnClick="button_submit_Click" />
            </p>
        </div>
    </form>
</body>
</html>
