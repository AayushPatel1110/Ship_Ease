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
    public partial class trucker_registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into login_DB values (@name,@age,@ph_no,@email,@pass,@prof_type)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@age", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ph_no", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
            cmd.Parameters.AddWithValue("@prof_type", DropDownList1.SelectedValue.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registered !!!');</script>");
            Response.Redirect("login.aspx");
        }

       

        
    }
}