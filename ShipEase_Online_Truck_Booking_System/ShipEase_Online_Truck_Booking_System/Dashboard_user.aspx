<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_user.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.user_dash" %>

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

    <form id="form2" runat="server" width="100%">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
        ForeColor="White" Text="Label"></asp:Label>
    <br />

    <div class="topnav">
        <a  class="active"  href="Dashboard_user.aspx">Home</a>
        <a  href="place_shpmnt.aspx">Place Shipment</a>
        <a  href="user_history.aspx">My Shipments</a>
        <a href="complaint.aspx">Complaints</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />

    <br />
    <h2 align="center" class="style1" >User Dashboard</h2>
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" Height="225px" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" 
                    SortExpression="user_name" />
                <asp:BoundField DataField="ship_from" HeaderText="ship_from" 
                    SortExpression="ship_from" />
                <asp:BoundField DataField="ship_to" HeaderText="ship_to" 
                    SortExpression="ship_to" />
                <asp:BoundField DataField="tot_km" HeaderText="tot_km" 
                    SortExpression="tot_km" />
                <asp:BoundField DataField="est_load" HeaderText="est_load" 
                    SortExpression="est_load" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="bidder_uid" HeaderText="bidder_uid" 
                    SortExpression="bidder_uid" />
                <asp:BoundField DataField="bidder_nm" HeaderText="bidder_nm" 
                    SortExpression="bidder_nm" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [uid], [user_name], [ship_from], [ship_to], [tot_km], [est_load], [date], [bidder_uid], [bidder_nm] FROM [shipment_list] WHERE ([user_uid] = @user_uid)">
            <SelectParameters>
                <asp:SessionParameter Name="user_uid" SessionField="user_uid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
