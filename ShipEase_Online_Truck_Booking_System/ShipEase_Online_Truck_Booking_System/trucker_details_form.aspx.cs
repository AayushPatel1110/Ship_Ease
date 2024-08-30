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
    public partial class trucker_details_form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user_uid = Session["bidder_uid"].ToString();
            string u_name = Session["user_name"].ToString();
            string u_phno = Session["user_phno"].ToString();
            string u_email = Session["user_email"].ToString();
            string u_age = Session["user_age"].ToString();

            cmd = new SqlCommand("insert into trucker_reg_frm values (@user_uid, @u_name,@u_age,@u_phno,@u_email,@plate_no,@licence_no,@ins_end_date)", con);
            cmd.Parameters.AddWithValue("@plate_no", TextBox1.Text);
            cmd.Parameters.AddWithValue("@licence_no", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ins_end_date", TextBox3.Text);
            //session
            cmd.Parameters.AddWithValue("@user_uid", user_uid);
            cmd.Parameters.AddWithValue("@u_name", u_name);
            cmd.Parameters.AddWithValue("@u_age", u_age);
            cmd.Parameters.AddWithValue("@u_phno", u_phno);
            cmd.Parameters.AddWithValue("@u_email", u_email);
            
            
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your Truck Details Added Successfully !!!');</script>");
        }
    }
}