<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ShipEase_Online_Truck_Booking_System.trucker_registration" %>

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
    <hr width="100%" color="white" height="2"/>
    <br />
    <h2 align="center" class="style1" >Register Form</h2>
    <br />
    <form id="form1" runat="server">
    <div class="trucker_reg_frm" >
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True">
            <asp:ListItem Value=" ">Select Profession type </asp:ListItem>
            <asp:ListItem>Trucker</asp:ListItem>
            <asp:ListItem Value="User / Transporter">User / Transporter</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Please Select Profession" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Name  :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Name Is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
        Age :<asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Age Should 20+" ForeColor="Red" 
            MaximumValue="80" MinimumValue="20"></asp:RangeValidator>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br />
        Phone Number:<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" 
            ErrorMessage="Number is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox><br />
        
        Email :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" 
            ErrorMessage="Email is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br />
        
        Enter Password :<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" 
            ErrorMessage="Password cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"  TextMode="Password"></asp:TextBox><br />
        Re-Type Password :
            
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
            ErrorMessage="Password Not Matched" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="TextBox6" runat="server"  TextMode="Password"></asp:TextBox><br />
        
        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="reg_btn" 
                 onclick="Button1_Click" /><br />
        
    </div>
    </form>
    
       
</body>
</html>
