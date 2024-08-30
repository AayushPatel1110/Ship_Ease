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
    public partial class display_selection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ShipEase_Online_Truck_Booking_System\ShipEase_Online_Truck_Booking_System\App_Data\register_DB.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd,cmd1;

        public void update_val()
        {
            //query to get bidders info for further update
            String u_email = Session["u_email"].ToString(); //get the value from session and comes from login.aspx 

            cmd1 = new SqlCommand("Select * from login_DB where email=@u_email", con);
            cmd1.Parameters.AddWithValue("@u_email", u_email);
            con.Open();
            SqlDataReader rd = cmd1.ExecuteReader();

            //Read the row
            rd.Read();
            //access Column values
            String bidder_uid = rd["uid"].ToString();
            String bidder_nm = rd["name"].ToString();

            con.Close();

            String shpmnt_uid = Session["shpmnt_UID"].ToString(); //Comes from trucker_DB
            String bid_price = TextBox1.Text;

            //query that update the table of shipment
            SqlCommand cmd = new SqlCommand("update shipment_list set price = @price , bidder_nm = @bidder_nm ,bidder_uid = @bidder_uid where uid=@shpmnt_uid", con);
            cmd.Parameters.AddWithValue("@price", bid_price);
            cmd.Parameters.AddWithValue("@bidder_nm", bidder_nm);
            cmd.Parameters.AddWithValue("@bidder_uid", bidder_uid);
            cmd.Parameters.AddWithValue("@shpmnt_uid", shpmnt_uid);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                //Update Successful
                Response.Write("<script>alert('Price Updated Successfully');</script>");
                TextBox1.Text = "";
            }
            else
            {
                //NO rows Affected or UID not Found
                Response.Write("<script>alert('Failed to update price');</script>");
            }
            con.Close();

        }

        public void display_data()
        {
            String shpmnt_uid = Session["shpmnt_UID"].ToString(); //Comes from trucker_DB
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from shipment_list where uid = @shpmnt_uid", con);
            cmd.Parameters.AddWithValue("@shpmnt_uid", shpmnt_uid);
            cmd.ExecuteNonQuery();

            //execute query to obtain data reader

            SqlDataReader rd = cmd.ExecuteReader();

            //check if data exist
            if (rd.HasRows)
            {
                //read data
                while (rd.Read())
                {
                    //retrieve data from reader and use it in label to show
                    String username = rd["user_name"].ToString();
                    String user_phno = rd["user_phno"].ToString();
                    String user_email = rd["user_email"].ToString();
                    String price = rd["price"].ToString();
                    String bidder_nm = rd["bidder_nm"].ToString();
                    String bidder_uid = rd["bidder_uid"].ToString();
                    DateTime date = Convert.ToDateTime(rd["date"]);

                    //assign variable to labels
                    Label1.Text = username;
                    Label2.Text = user_phno;
                    Label3.Text = user_email;
                    Label4.Text = price;
                    Label5.Text = date.ToString("dd/MM/yyyy");
                    Label6.Text = bidder_uid;
                    Label7.Text = bidder_nm;

                }
            }
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            display_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String shpmnt_uid = Session["shpmnt_UID"].ToString(); //Comes from trucker_DB

            SqlCommand sel_prc_qry = new SqlCommand("select price from shipment_list where uid=@shpmnt_uid", con);
            sel_prc_qry.Parameters.AddWithValue("@shpmnt_uid", shpmnt_uid);
            con.Open();
            sel_prc_qry.ExecuteNonQuery();
            int price = (int)sel_prc_qry.ExecuteScalar();
            con.Close();

            int new_price = int.Parse(TextBox1.Text);

            if (new_price < price)
            {
                update_val();
                display_data();
            }
            else
            {
                err_txt.Visible = true;
                err_txt.Text = "Price Should be less than the current price";
            }
            
        }
    }
}