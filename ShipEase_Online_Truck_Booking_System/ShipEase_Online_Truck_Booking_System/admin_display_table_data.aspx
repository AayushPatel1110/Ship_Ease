<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_display_table_data.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.admin_display_table_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />

    <title></title>
    <style type="text/css">        
       
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server" Height="78px">
        <div id="header">
            <h1 align="center" class="style1">Ship-Ease</h1>
            <h3 class="h3_header" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style1">- An Online Truck Booking System</span></h3>

        </div>
    </asp:Panel>
    <br />
    <div class="topnav">
        <a class="active" href="admin.aspx">Home</a>
        <a href="admin_shipment_report.aspx">Shipment Report</a>
        <a href="admin_display_table_data.aspx?table=login_DB">Users</a>
        <a href="admin_display_table_data.aspx?table=shipment_list">Shpiments</a>
        <a href="admin_display_table_data.aspx?table=trucker_reg_frm">Trucks Details</a>
        <a href="admin_display_table_data.aspx?table=complaint">Complaints</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />
    <h2 align="center" class="style1" >Admin Dashboard</h2>

    <form id="form2" runat="server">
    <div>
        <asp:Label ID="Label2" runat="server" Text="Table Name : " Font-Bold="True" 
            Font-Size="Larger" ForeColor="White" style="font-weight: 700"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
            Font-Size="Larger" ForeColor="White" style="font-weight: 700"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Width="100%">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
