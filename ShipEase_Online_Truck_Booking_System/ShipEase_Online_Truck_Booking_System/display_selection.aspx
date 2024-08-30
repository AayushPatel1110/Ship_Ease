<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_selection.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.display_selection" %>

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
        .style2
        {
            width: 381px;
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
    <div class="topnav">
        <a  class="active" href="Dashboard_trucker.aspx">Home</a>
        <a  href="trucker_history.aspx">My Biddings</a>
        <a href="trucker_details_form.aspx">Add Driving Details</a>
        <a href="complaint.aspx">Complain</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />
    <h2 align="center" class="style1" >Shipment Information</h2>
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <tr><td>Name : </td><td class="style2"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
             <tr><td>Phone Number : </td><td class="style2"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
              <tr><td>email : </td><td class="style2"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td></tr>
               <tr><td>Price : </td><td class="style2"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><td>Date : </td><td class="style2"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><td colspan="2">Bidder Details : </td></tr>
                <tr><td>Bidder Uid  : </td><td class="style2"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><td>Bidder Name  : </td><td class="style2"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td></tr>
        </table width="100%">
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="err_txt" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Label" Visible="False"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Field is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Place Bid" />
        
    </div>
    </form>
</body>
</html>
