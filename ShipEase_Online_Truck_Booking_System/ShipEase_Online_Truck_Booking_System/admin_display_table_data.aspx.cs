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
    public partial class admin_display_table_data : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd, cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {
            string table_name = Request.QueryString["table"];
            Label1.Text = table_name;

            //show data in Gridview
            string query = "Select * from " + table_name;
            cmd = new SqlCommand(query, con);
            
           
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            con.Close();
        }
    }
}