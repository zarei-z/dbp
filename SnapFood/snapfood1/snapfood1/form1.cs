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
    public partial class Form1 : Form
    {
        string conn = ("");
        public Form1()
        {
            InitializeComponent();
        }
        
        private void button1_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text == "" && txtUsername.Text == "")
            {
                MessageBox.Show("لطفا رمز عبور و نام کاربری خود را وارد نمایید.");
            }
            else
            {
                SqlConnection con = new SqlConnection(conn);
                SqlCommand cmd = new SqlCommand("select * from login where Name=@Uname and Pass=@Upass", con);
                cmd.Parameters.AddWithValue("@Uname", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Upass", txtPassword.Text);

                con.Open();
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                con.Close();
            }
         
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }

    }
}
