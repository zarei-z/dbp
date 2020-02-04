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
    public partial class EditUser : Form
    {
        string conn = ("");
        public EditUser()
        {
            InitializeComponent();
        }

        public EditUser(string _username)
        {
            using (SqlConnection con = new SqlConnection(conn))
            {

                InitializeComponent();
                DataReader reader = con.Select("select * from users where username='" + _username + "'");
                reader.Read();
                lblUserid.Text = _username;
                txtUserid.Text = reader["userid"].ToString();
                txtfname.Text = reader["fname"].ToString();
                txtlname.Text = reader["lname"].ToString();

                con.Close();
            }

        }

        private void btn_change_Click(object sender, EventArgs e)
        {
            con.ExecuteNonQuery("update persons set userid=N'" + txtUserid.Text +
    "',fname=N'" + txtfname.Text + "',lname=N'" + txtlname.Text + "'");
            MessageBox.Show("اطلاعات با موفقیت تغییر یافت");
        }
    }
}
