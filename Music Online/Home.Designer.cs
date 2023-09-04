namespace Music_Online
{
    partial class Home
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Home));
            this.lv_showitem = new System.Windows.Forms.ListView();
            this.TenSP = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.GiaSP = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.tb_search = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pb_Favorite = new System.Windows.Forms.PictureBox();
            this.pb_Logo = new System.Windows.Forms.PictureBox();
            this.pb_personal = new System.Windows.Forms.PictureBox();
            this.pb_exit = new System.Windows.Forms.PictureBox();
            this.btnKiemTra = new System.Windows.Forms.Button();
            this.bt_TheLoai = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pb_Favorite)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_Logo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_personal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_exit)).BeginInit();
            this.SuspendLayout();
            // 
            // lv_showitem
            // 
            this.lv_showitem.BackColor = System.Drawing.Color.White;
            this.lv_showitem.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.TenSP,
            this.GiaSP});
            this.lv_showitem.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.lv_showitem.HideSelection = false;
            this.lv_showitem.LargeImageList = this.imageList1;
            this.lv_showitem.Location = new System.Drawing.Point(12, 77);
            this.lv_showitem.Name = "lv_showitem";
            this.lv_showitem.Size = new System.Drawing.Size(936, 451);
            this.lv_showitem.SmallImageList = this.imageList1;
            this.lv_showitem.TabIndex = 6;
            this.lv_showitem.UseCompatibleStateImageBehavior = false;
            this.lv_showitem.ItemSelectionChanged += new System.Windows.Forms.ListViewItemSelectionChangedEventHandler(this.lv_showitem_ItemSelectionChanged);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Từng là của nhau.jpg");
            this.imageList1.Images.SetKeyName(1, "Ánh sao và bầu trời.jpg");
            this.imageList1.Images.SetKeyName(2, "Anh yêu em cực (remix).jpg");
            this.imageList1.Images.SetKeyName(3, "Bên trên tầng lầu.jpg");
            this.imageList1.Images.SetKeyName(4, "Biển nhớ.jpg");
            this.imageList1.Images.SetKeyName(5, "Chết trong em.jpg");
            this.imageList1.Images.SetKeyName(6, "Chuyện đôi ta.jpg");
            this.imageList1.Images.SetKeyName(7, "Có đâu ai ngờ.jpg");
            this.imageList1.Images.SetKeyName(8, "Còn tuổi nào cho em.jpg");
            this.imageList1.Images.SetKeyName(9, "Diễm xưa.jpg");
            this.imageList1.Images.SetKeyName(10, "Đông kiếm em.jpg");
            this.imageList1.Images.SetKeyName(11, "Dự báo thời tiết hôm nay mưa.jpg");
            this.imageList1.Images.SetKeyName(12, "Em dạo này.jpg");
            this.imageList1.Images.SetKeyName(13, "Em là.jpg");
            this.imageList1.Images.SetKeyName(14, "Không thích.jpg");
            this.imageList1.Images.SetKeyName(15, "Love u so.jpg");
            this.imageList1.Images.SetKeyName(16, "Mah boo (remix).jpg");
            this.imageList1.Images.SetKeyName(17, "Mưa hồng.jpg");
            this.imageList1.Images.SetKeyName(18, "Ngày còn em bên tôi.jpg");
            this.imageList1.Images.SetKeyName(19, "Ngày xuân long phụng sum vầy.jpg");
            this.imageList1.Images.SetKeyName(20, "ngủ sớm đi em.jpg");
            this.imageList1.Images.SetKeyName(21, "Nhìn những mùa thu đi.jpg");
            this.imageList1.Images.SetKeyName(22, "Phong.jpg");
            this.imageList1.Images.SetKeyName(23, "Say đắm trong lần đầu (remix).jpg");
            this.imageList1.Images.SetKeyName(24, "Tết tết tết.jpg");
            this.imageList1.Images.SetKeyName(25, "To the moon.jpg");
            this.imageList1.Images.SetKeyName(26, "Vaicaunoicokhiennguoithaydoi.jpg");
            this.imageList1.Images.SetKeyName(27, "Vì anh đâu có biết.jpg");
            this.imageList1.Images.SetKeyName(28, "Vùng lá me bay.jpg");
            this.imageList1.Images.SetKeyName(29, "Xuân đã về.jpg");
            this.imageList1.Images.SetKeyName(30, "Waiting for you.jpg");
            // 
            // tb_search
            // 
            this.tb_search.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_search.Location = new System.Drawing.Point(278, 23);
            this.tb_search.Name = "tb_search";
            this.tb_search.Size = new System.Drawing.Size(528, 40);
            this.tb_search.TabIndex = 10;
            this.tb_search.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tb_search_KeyDown);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkGray;
            this.panel1.Controls.Add(this.button6);
            this.panel1.Controls.Add(this.button5);
            this.panel1.Controls.Add(this.button4);
            this.panel1.Controls.Add(this.button3);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.button1);
            this.panel1.Location = new System.Drawing.Point(89, 57);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(322, 188);
            this.panel1.TabIndex = 38;
            this.panel1.Visible = false;

            // 
            // pb_Favorite
            // 
            this.pb_Favorite.BackgroundImage = global::Music_Online.Properties.Resources._2203510_favorite_favourite_heart_love_icon;
            this.pb_Favorite.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_Favorite.Location = new System.Drawing.Point(855, 2);
            this.pb_Favorite.Name = "pb_Favorite";
            this.pb_Favorite.Size = new System.Drawing.Size(30, 30);
            this.pb_Favorite.TabIndex = 37;
            this.pb_Favorite.TabStop = false;
            this.pb_Favorite.Click += new System.EventHandler(this.pb_Favorite_Click);
            // 
            // pb_Logo
            // 
            this.pb_Logo.BackColor = System.Drawing.Color.Transparent;
            this.pb_Logo.BackgroundImage = global::Music_Online.Properties.Resources.Apple;
            this.pb_Logo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_Logo.Location = new System.Drawing.Point(17, 9);
            this.pb_Logo.Name = "pb_Logo";
            this.pb_Logo.Size = new System.Drawing.Size(60, 60);
            this.pb_Logo.TabIndex = 35;
            this.pb_Logo.TabStop = false;
            // 
            // pb_personal
            // 
            this.pb_personal.BackgroundImage = global::Music_Online.Properties.Resources._8541835_history_time_icon;
            this.pb_personal.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_personal.Location = new System.Drawing.Point(891, 2);
            this.pb_personal.Name = "pb_personal";
            this.pb_personal.Size = new System.Drawing.Size(30, 30);
            this.pb_personal.TabIndex = 34;
            this.pb_personal.TabStop = false;
            this.pb_personal.Click += new System.EventHandler(this.pb_personal_Click);
            // 
            // pb_exit
            // 
            this.pb_exit.BackColor = System.Drawing.Color.Transparent;
            this.pb_exit.BackgroundImage = global::Music_Online.Properties.Resources._1564506_close_exit_logout_power_icon;
            this.pb_exit.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_exit.Location = new System.Drawing.Point(927, 2);
            this.pb_exit.Name = "pb_exit";
            this.pb_exit.Size = new System.Drawing.Size(30, 30);
            this.pb_exit.TabIndex = 33;
            this.pb_exit.TabStop = false;
            this.pb_exit.Click += new System.EventHandler(this.pb_exit_Click);
            // 
            // btnKiemTra
            // 
            this.btnKiemTra.BackColor = System.Drawing.Color.White;
            this.btnKiemTra.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnKiemTra.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnKiemTra.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKiemTra.Image = ((System.Drawing.Image)(resources.GetObject("btnKiemTra.Image")));
            this.btnKiemTra.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnKiemTra.Location = new System.Drawing.Point(811, 23);
            this.btnKiemTra.Name = "btnKiemTra";
            this.btnKiemTra.Size = new System.Drawing.Size(40, 40);
            this.btnKiemTra.TabIndex = 32;
            this.btnKiemTra.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnKiemTra.UseVisualStyleBackColor = false;
            this.btnKiemTra.Click += new System.EventHandler(this.btnKiemTra_Click);
            // 
            // bt_TheLoai
            // 
            this.bt_TheLoai.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_TheLoai.Location = new System.Drawing.Point(89, 22);
            this.bt_TheLoai.Name = "bt_TheLoai";
            this.bt_TheLoai.Size = new System.Drawing.Size(104, 35);
            this.bt_TheLoai.TabIndex = 39;
            this.bt_TheLoai.Text = "Thể loại";
            this.bt_TheLoai.UseVisualStyleBackColor = true;
            this.bt_TheLoai.Click += new System.EventHandler(this.bt_TheLoai_Click);

            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(14, 20);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(128, 31);
            this.button1.TabIndex = 0;
            this.button1.Text = "Remix";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(14, 74);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(128, 31);
            this.button2.TabIndex = 0;
            this.button2.Text = "Pop";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(14, 128);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(128, 31);
            this.button3.TabIndex = 0;
            this.button3.Text = "Nhạc Trịnh";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(165, 20);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(128, 31);
            this.button4.TabIndex = 0;
            this.button4.Text = "Nhạc xưa";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.Location = new System.Drawing.Point(165, 74);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(128, 31);
            this.button5.TabIndex = 0;
            this.button5.Text = "Indie";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // button6
            // 
            this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button6.Location = new System.Drawing.Point(165, 128);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(128, 31);
            this.button6.TabIndex = 0;
            this.button6.Text = "Rap";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(960, 540);
            this.Controls.Add(this.bt_TheLoai);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pb_Favorite);
            this.Controls.Add(this.pb_Logo);
            this.Controls.Add(this.pb_personal);
            this.Controls.Add(this.pb_exit);
            this.Controls.Add(this.btnKiemTra);
            this.Controls.Add(this.tb_search);
            this.Controls.Add(this.lv_showitem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Home";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.f_Home_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pb_Favorite)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_Logo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_personal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_exit)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListView lv_showitem;
        private System.Windows.Forms.ColumnHeader TenSP;
        private System.Windows.Forms.ColumnHeader GiaSP;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.TextBox tb_search;
        private System.Windows.Forms.Button btnKiemTra;
        private System.Windows.Forms.PictureBox pb_exit;
        private System.Windows.Forms.PictureBox pb_personal;
        private System.Windows.Forms.PictureBox pb_Logo;
        private System.Windows.Forms.PictureBox pb_Favorite;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button bt_TheLoai;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
    }
}

