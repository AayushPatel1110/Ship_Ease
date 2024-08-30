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
    public partial class place_shpmnt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user_uid = Session["user_uid"].ToString();
            string u_name = Session["user_name"].ToString();
            string u_phno = Session["user_phno"].ToString();
            string u_email = Session["user_email"].ToString();
            DateTime t_date = DateTime.Today;

            cmd = new SqlCommand("insert into shipment_list(user_name,user_phno,user_email,price,date,ship_from,ship_to,tot_km,est_load,user_uid) values ( @u_name,@u_phno,@u_email,@bid_pr,@t_date, @ship_from,@ship_to,@tot_km,@est_load,@user_uid)", con);
            cmd.Parameters.AddWithValue("@ship_from", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ship_to", TextBox2.Text);
            cmd.Parameters.AddWithValue("@tot_km", TextBox3.Text);
            cmd.Parameters.AddWithValue("@est_load", TextBox4.Text);
            cmd.Parameters.AddWithValue("@bid_pr", TextBox5.Text);
            //session
            cmd.Parameters.AddWithValue("@user_uid", user_uid);
            cmd.Parameters.AddWithValue("@u_name", u_name);
            cmd.Parameters.AddWithValue("@u_phno", u_phno);
            cmd.Parameters.AddWithValue("@u_email", u_email);
            //date system
            cmd.Parameters.AddWithValue("@t_date", t_date);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Shipment Listed Successfully !!!');</script>");
        }
    }
}