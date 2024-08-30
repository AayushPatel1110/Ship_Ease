<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_history.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.user_history" %>

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
        <a   href="Dashboard_user.aspx">Home</a>
        <a  href="place_shpmnt.aspx">Place Shipment</a>
        <a class="active" href="user_history.aspx">My Shipments</a>
        <a href="complaint.aspx">Complaints</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />
    <br />
    <form id="form1" runat="server" width="80%" style="margin-left: 0%; margin-right: 0%;">
    <div width="100%">
        Start Date :&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please Enter Date" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="form" type="date"></asp:TextBox>
            <br />
        End Date :&nbsp; 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please Enter Date" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="form" type="date"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
        <br />
        <br />
        Total Transaction :
        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label" 
            Visible="False" Font-Size="Large" 
            style="font-weight: 700; text-decoration: underline"></asp:Label>
        <br />
        <br />
    
        <asp:GridView ID="GridView1" runat="server" Width="100%" >
        </asp:GridView>
        <br />
    </div>
    </form>
</body>
</html>
