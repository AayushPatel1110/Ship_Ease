<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.admin" %>

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
        .res
        {
            width: 300px;
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

    <form id="form1" runat="server">
    <div>
    <table align="center" style="width: 760px">
        <tr><td>Total Number of Users : </td> <td class="res"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Total Number of Shipments : </td> <td class="res"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Total Number of Registered and Varified Trucks : </td> <td class="res"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Total Number of Complaints : </td> <td class="res"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
