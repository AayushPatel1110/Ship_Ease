<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_trucker.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.Dashboard_for_truckers" %>

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
        <a  class="active" href="Dashboard_trucker.aspx">Home</a>
        <a  href="trucker_history.aspx">My Biddings</a>
        <a href="trucker_details_form.aspx">Add Driving Details</a>
        <a href="complaint.aspx">Complain</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    
    <br />

    <br />
    <h2 align="center" class="style1" >Truckers Dashboard</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="100%" Height="225px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="uid" HeaderText="uid" 
                    SortExpression="uid" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" 
                    SortExpression="user_name" />
                <asp:BoundField DataField="user_phno" HeaderText="user_phno" 
                    SortExpression="user_phno" />
                <asp:BoundField DataField="user_email" HeaderText="user_email" 
                    SortExpression="user_email" />
                <asp:BoundField DataField="price" HeaderText="price" 
                    SortExpression="price" />
                <asp:BoundField DataField="bidder_nm" HeaderText="bidder_nm" 
                    SortExpression="bidder_nm" />
                <asp:BoundField DataField="bidder_uid" HeaderText="bidder_uid" 
                    SortExpression="bidder_uid" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="ship_from" HeaderText="ship_from" 
                    SortExpression="ship_from" />
                <asp:BoundField DataField="ship_to" HeaderText="ship_to" 
                    SortExpression="ship_to" />
                <asp:BoundField DataField="tot_km" HeaderText="tot_km" 
                    SortExpression="tot_km" />
                <asp:BoundField DataField="est_load" HeaderText="est_load" 
                    SortExpression="est_load" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [shipment_list]"></asp:SqlDataSource>
        
    
    </form>
</body>
</html>
