<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create_record.aspx.cs" Inherits="CMS_EnDe.create_record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增病歷資料</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1 style="color:#0052CC">新增病歷資料</h1>
            <p>
                <asp:Label ID="label_date" runat="server" Text="日期："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_date" runat="server" Enabled="false"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="button_date" runat="server" Text="選取日期" OnClick="button_date_Click" />
            </p>

            <div style="width:200px;margin:0 auto;cursor:default;">
                <p>
                    <asp:DropDownList ID="dropdownlist_year" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropdownlist_year_SelectedIndexChanged" Visible="False"></asp:DropDownList>
                    <asp:DropDownList ID="dropdownlist_month" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropdownlist_month_SelectedIndexChanged" Visible="False"></asp:DropDownList>
                </p>
                <p>
                    <asp:Calendar ID="calendar_date" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calendar_date_SelectionChanged" Visible="False">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </p>
            </div>

            <p>
                <asp:Label ID="label_name" runat="server" Text="姓名："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_name" runat="server" Enabled="false"></asp:TextBox>
            </p>
            <br />
            <p>
                <asp:Label ID="label_charge" runat="server" Text="收費："></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="textbox_charge" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="label_note" runat="server" Text="診療狀況："></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="textbox_note" runat="server" Width="500"></asp:TextBox>
            </p>

            <p>
                <asp:Button ID="button_cancel" runat="server" Text="取消" OnClick="button_cancel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="button_submit" runat="server" Text="確定" OnClick="button_submit_Click" />
            </p>
        </div>
    </form>
</body>
</html>
