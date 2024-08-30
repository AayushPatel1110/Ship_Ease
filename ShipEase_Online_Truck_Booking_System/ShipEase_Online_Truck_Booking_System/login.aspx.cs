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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con= new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select  prof_type from login_DB where email=@usrnm and pass=@pass" ,con);
            cmd.Parameters.AddWithValue("@usrnm", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            
            if (dr.Read())
            {
                con.Close();
                con.Open();

                Session["u_email"] = TextBox1.Text; // Email stored in session
                String prof_type = (string)cmd.ExecuteScalar();
                if (prof_type.Equals("Trucker"))
                {
                    
                    Response.Redirect("Dashboard_trucker.aspx");
                }
                else if (prof_type.Equals("User / Transporter"))
                {
                    
                    Response.Redirect("Dashboard_user.aspx");
                }
                else
                {
                    Response.Redirect("admin.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong password or username try again');</Script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }


       
    }
}