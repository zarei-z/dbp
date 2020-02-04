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
    public partial class Register : Form
    {
        string conn = ("");
        public Register()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btn_register_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UserAdd", con);
                cmd.Parameters.AddWithValue("@userid", txtUserid.Text);
                cmd.Parameters.AddWithValue("@fname", txtfname.Text);
                cmd.Parameters.AddWithValue("@lname", txtlname.Text);
                cmd.ExecuteNonQuery();
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
            txtUserid.Text = txtfname.Text = txtlname.Text = ""; 
        }


    }
}
