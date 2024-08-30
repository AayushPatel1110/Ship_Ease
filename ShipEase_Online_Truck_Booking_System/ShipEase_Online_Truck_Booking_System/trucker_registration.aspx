<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trucker_registration.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.trucker_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />

    <title></title>
    <style type="text/css">        
        #header
        {
            background-color: #6699FF;
        }
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server" Height="78px">
        <div id="header">
            <h1 align="center" class="style1">UShip</h1>
            <h3 class="h3_header" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style1">- An Online Truck Booking System</span></h3>

        </div>
    </asp:Panel>
    <form id="form1" runat="server">
    <div class="trucker_reg_frm">
        Name  : 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
       
        Truck Plate Number :
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        Driver's Licence Number :
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
        Insurance End Date : 
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar><br />
        
        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="reg_btn" />

    </div>
    </form>
</body>
</html>
