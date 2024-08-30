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
    public partial class complaint : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u_name = Session["user_name"].ToString();
            string u_phno = Session["user_phno"].ToString();
            string u_email = Session["user_email"].ToString();
            DateTime t_date = DateTime.Today;

            cmd = new SqlCommand("insert into complaint values (@u_name,@u_phno,@u_email,@subject,@sub_desc,@t_date)", con);
            cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sub_desc", TextBox2.Text);
            //Session
            cmd.Parameters.AddWithValue("@u_name", u_name);
            cmd.Parameters.AddWithValue("@u_phno", u_phno);
            cmd.Parameters.AddWithValue("@u_email", u_email);
            //date system
            cmd.Parameters.AddWithValue("@t_date", t_date);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Complaint Submitted Successfully !!!');</script>");
        }
    }
}