<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

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
    </asp:Panel><br /><br />
    <form id="form1" runat="server">
    <div class="login">
    <h3>Login</h3>
        Email:&nbsp; :&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="log_tbx"></asp:TextBox><br /><br />

        Password :&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="log_tbx" TextMode="Password"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Register" 
            onclick="Button2_Click" />
    </div>
    </form>
</body>


</html>
