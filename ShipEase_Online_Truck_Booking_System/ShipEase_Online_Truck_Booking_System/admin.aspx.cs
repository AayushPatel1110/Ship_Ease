using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShipEase_Online_Truck_Booking_System
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd1, cmd2, cmd3, cmd4;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd1 = new SqlCommand("select COUNT(*) from login_DB", con);
            cmd2 = new SqlCommand("select COUNT(*) from shipment_list", con);
            cmd3 = new SqlCommand("select COUNT(*) from trucker_reg_frm", con);
            cmd4 = new SqlCommand("select COUNT(*) from complaint", con);
            con.Open();
            string users = cmd1.ExecuteScalar().ToString();
            string shipments = cmd2.ExecuteScalar().ToString();
            string registered_trucks= cmd3.ExecuteScalar().ToString();
            string compln = cmd4.ExecuteScalar().ToString();
            con.Close();

            Label1.Text = users;
            Label2.Text = shipments;
            Label3.Text = registered_trucks;
            Label4.Text = compln;


        }
    }
}