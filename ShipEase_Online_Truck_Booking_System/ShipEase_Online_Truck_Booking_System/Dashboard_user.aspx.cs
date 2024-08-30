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
    public partial class user_dash : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            String u_email = Session["u_email"].ToString(); // Get The value from Session comes from login.aspx

            cmd = new SqlCommand("select * from login_DB where email = @u_email", con);
            cmd.Parameters.AddWithValue("@u_email", u_email);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                rd.Read();
                //Access the value and show it on label
                Session["user_uid"] = rd["uid"].ToString(); //store uid in session from login_DB
                Session["user_name"] = rd["name"].ToString();
                Session["user_phno"] = rd["ph_no"].ToString();
                Session["user_email"] = rd["email"].ToString();
                Session["user_age"] = rd["age"].ToString();
            }
            con.Close();
            Label1.Text = "Welcome," + Session["user_name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("place_shpmnt.aspx");
        }

        
    }
}