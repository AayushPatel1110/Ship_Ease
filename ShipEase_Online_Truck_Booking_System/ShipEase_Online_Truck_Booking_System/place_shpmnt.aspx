<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="place_shpmnt.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.place_shpmnt" %>

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

            <p align="center" class="h3_header">
                &nbsp;</p>

        </div>
    </asp:Panel>
    <br />
     <div class="topnav">
        <a   href="Dashboard_user.aspx">Home</a>
        <a  class="active" href="place_shpmnt.aspx">Place Shipment</a>
        <a  href="user_history.aspx">My Shipments</a>
        <a href="complaint.aspx">Complaints</a>
        <a href="change_pass.aspx">Change Password</a>
        <a href="login.aspx">Log-Out</a> 
    </div>
    <br />
    <h2 align="center" class="style1" >Place Shipment</h2>
    <form id="form1" runat="server">
    <div>
        From  :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
        To :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br />
        Total kilometer:<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox><br />
        
        Estimated Load(Kg) :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br />
        
        Bid Start Price :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />

        <asp:Button ID="Button2" runat="server" Text="Place Shipment Now !!!" 
            CssClass="reg_btn" onclick="Button2_Click" />
        <br />
    </div>
    </form>
</body>
</html>
