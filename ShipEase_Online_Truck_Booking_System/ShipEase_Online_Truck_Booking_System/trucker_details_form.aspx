<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trucker_details_form.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.trucker_details_form" %>

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
        <a  href="Dashboard_trucker.aspx">Home</a>
        <a  href="trucker_history.aspx">My Biddings</a>
        <a class="active" href="trucker_details_form.aspx">Add Driving Details</a>
        <a href="complaint.aspx">Complain</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />
    <form id="form1" runat="server">
    <div>
        Truck Number  :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
        Driver Licencnce Number :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>Insurance - End-Date:<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="form" type="date"></asp:TextBox>
            <br />
        
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <br />
        
        
        <br />
    </div>
    </form>
</body>
</html>
