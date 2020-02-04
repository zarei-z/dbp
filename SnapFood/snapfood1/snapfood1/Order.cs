using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace snapfood1
{
    public partial class Order : Form
    {
        string conn = ("");
        public Order()
        {
            InitializeComponent();
        }

        private void btn_register_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("OrderAdd", con);
                cmd.Parameters.AddWithValue("@staffnum", txtStuff.Text);
                cmd.Parameters.AddWithValue("@userid", txtUserid.Text);
                cmd.Parameters.AddWithValue("@placeid", txtPlaceid.Text);
                cmd.Parameters.AddWithValue("@del_pay", txtDel_pay.Text);
                cmd.Parameters.AddWithValue("@place_pay", txtPlace_pay.Text);
                cmd.Parameters.AddWithValue("@phone1", txtPone1.Text);
                cmd.Parameters.AddWithValue("@address1", txtAddress1.Text);
                cmd.Parameters.AddWithValue("@city1", txtCity1.Text);
                cmd.Parameters.AddWithValue("@phone2", txtPhone2.Text);
                cmd.Parameters.AddWithValue("@address2", txtAddress2.Text);
                cmd.Parameters.AddWithValue("@city2", txtCity2.Text);
                cmd.Parameters.AddWithValue("@mealid", txtMeal_id.Text);
                MessageBox.Show("ثبت با موفقیت انجام شد ");
                Clear();
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }

        void Clear()
        {
            txtStuff.Text = txtUserid.Text = txtPlaceid.Text = txtDel_pay.Text = txtPlace_pay.Text = txtPone1.Text = txtAddress1.Text
                = txtCity1.Text = txtPhone2.Text = txtAddress2.Text = txtCity2.Text = txtMeal_id.Text = "";
        }

        private void Order_Load(object sender, EventArgs e)
        {

        }

    }
}
