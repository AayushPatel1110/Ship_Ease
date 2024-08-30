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
    public partial class change_pass : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd,cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            cmd = new SqlCommand("select  pass from login_DB where email=@usrnm and pass=@pass" ,con);
            cmd.Parameters.AddWithValue("@usrnm", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                con.Close();
                con.Open();
                cmd1 = new SqlCommand("update login_DB set pass = @pass where email=@email", con);
                cmd1.Parameters.AddWithValue("@pass", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@email", TextBox1.Text);
                
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Email or Password');</Script>");
            }
        }
    }
}