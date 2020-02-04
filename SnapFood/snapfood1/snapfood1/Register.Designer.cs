namespace snapfood1
{
    partial class Register
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Userid = new System.Windows.Forms.Label();
            this.txtUserid = new System.Windows.Forms.TextBox();
            this.Username = new System.Windows.Forms.Label();
            this.txtfname = new System.Windows.Forms.TextBox();
            this.Userlname = new System.Windows.Forms.Label();
            this.txtlname = new System.Windows.Forms.TextBox();
            this.btn_register = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Userid
            // 
            this.Userid.AutoSize = true;
            this.Userid.Location = new System.Drawing.Point(508, 99);
            this.Userid.Name = "Userid";
            this.Userid.Size = new System.Drawing.Size(42, 20);
            this.Userid.TabIndex = 0;
            this.Userid.Text = "شناسه";
            // 
            // txtUserid
            // 
            this.txtUserid.Location = new System.Drawing.Point(187, 99);
            this.txtUserid.Name = "txtUserid";
            this.txtUserid.Size = new System.Drawing.Size(245, 26);
            this.txtUserid.TabIndex = 1;
            // 
            // Username
            // 
            this.Username.AutoSize = true;
            this.Username.Location = new System.Drawing.Point(528, 157);
            this.Username.Name = "Username";
            this.Username.Size = new System.Drawing.Size(22, 20);
            this.Username.TabIndex = 2;
            this.Username.Text = "نام";
            // 
            // txtfname
            // 
            this.txtfname.Location = new System.Drawing.Point(187, 154);
            this.txtfname.Name = "txtfname";
            this.txtfname.Size = new System.Drawing.Size(245, 26);
            this.txtfname.TabIndex = 3;
            // 
            // Userlname
            // 
            this.Userlname.AutoSize = true;
            this.Userlname.Location = new System.Drawing.Point(477, 218);
            this.Userlname.Name = "Userlname";
            this.Userlname.Size = new System.Drawing.Size(73, 20);
            this.Userlname.TabIndex = 4;
            this.Userlname.Text = "نام خانوادگی";
            // 
            // txtlname
            // 
            this.txtlname.Location = new System.Drawing.Point(187, 212);
            this.txtlname.Name = "txtlname";
            this.txtlname.Size = new System.Drawing.Size(245, 26);
            this.txtlname.TabIndex = 5;
            // 
            // btn_register
            // 
            this.btn_register.Location = new System.Drawing.Point(337, 296);
            this.btn_register.Name = "btn_register";
            this.btn_register.Size = new System.Drawing.Size(75, 32);
            this.btn_register.TabIndex = 6;
            this.btn_register.Text = "ثبت";
            this.btn_register.UseVisualStyleBackColor = true;
            this.btn_register.Click += new System.EventHandler(this.btn_register_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(201, 296);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(80, 32);
            this.btnExit.TabIndex = 7;
            this.btnExit.Text = "انصراف";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.button1_Click);
            // 
            // Register
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(656, 486);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btn_register);
            this.Controls.Add(this.txtlname);
            this.Controls.Add(this.Userlname);
            this.Controls.Add(this.txtfname);
            this.Controls.Add(this.Username);
            this.Controls.Add(this.txtUserid);
            this.Controls.Add(this.Userid);
            this.Name = "Register";
            this.Text = "ثبت نام";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Userid;
        private System.Windows.Forms.TextBox txtUserid;
        private System.Windows.Forms.Label Username;
        private System.Windows.Forms.TextBox txtfname;
        private System.Windows.Forms.Label Userlname;
        private System.Windows.Forms.TextBox txtlname;
        private System.Windows.Forms.Button btn_register;
        private System.Windows.Forms.Button btnExit;
    }
}