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
    public partial class user_history : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd, cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String start_date = TextBox1.Text;
            String end_date = TextBox2.Text;

            String user_uid = Session["user_uid"].ToString();

            //show data in Gridview
            cmd = new SqlCommand("Select * from shipment_list where user_uid=@user_uid AND date BETWEEN @start_dt AND @end_dt;", con);
            cmd.Parameters.AddWithValue("@user_uid", user_uid);
            cmd.Parameters.AddWithValue("@start_dt", start_date);
            cmd.Parameters.AddWithValue("@end_dt", end_date);


            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            con.Close();

            //total price 
            cmd1 = new SqlCommand("Select SUM(price) from shipment_list where user_uid=@user_uid AND date BETWEEN @start_dt AND @end_dt;", con);
            cmd1.Parameters.AddWithValue("@user_uid", user_uid);
            cmd1.Parameters.AddWithValue("@start_dt", start_date);
            cmd1.Parameters.AddWithValue("@end_dt", end_date);
            con.Open();
            int? price = cmd1.ExecuteScalar() as int?; //int? means nullable int
            con.Close();
            if (price.HasValue)
            {
                Label1.Visible = true;
                Label1.Text = "" + price;

            }
            else
            {
                Label1.Text = "No Data Found";
            }
        }
    }
}