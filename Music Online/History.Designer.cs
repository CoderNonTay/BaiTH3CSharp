namespace Music_Online
{
    partial class History
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(History));
            this.lv_showitem = new System.Windows.Forms.ListView();
            this.TenSP = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.GiaSP = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.pb_Logo = new System.Windows.Forms.PictureBox();
            this.lb_Name = new System.Windows.Forms.Label();
            this.pb_exit = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pb_Logo)).BeginInit();
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
            this.lv_showitem.TabIndex = 7;
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
            // pb_Logo
            // 
            this.pb_Logo.BackColor = System.Drawing.Color.Transparent;
            this.pb_Logo.BackgroundImage = global::Music_Online.Properties.Resources.Apple;
            this.pb_Logo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_Logo.Location = new System.Drawing.Point(17, 9);
            this.pb_Logo.Name = "pb_Logo";
            this.pb_Logo.Size = new System.Drawing.Size(60, 60);
            this.pb_Logo.TabIndex = 36;
            this.pb_Logo.TabStop = false;
            // 
            // lb_Name
            // 
            this.lb_Name.AutoSize = true;
            this.lb_Name.BackColor = System.Drawing.Color.White;
            this.lb_Name.Font = new System.Drawing.Font("Microsoft Sans Serif", 33F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_Name.ForeColor = System.Drawing.SystemColors.Desktop;
            this.lb_Name.Location = new System.Drawing.Point(309, 17);
            this.lb_Name.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lb_Name.Name = "lb_Name";
            this.lb_Name.Size = new System.Drawing.Size(343, 52);
            this.lb_Name.TabIndex = 37;
            this.lb_Name.Text = "Lịch sử đã nghe";
            // 
            // pb_exit
            // 
            this.pb_exit.BackColor = System.Drawing.Color.Transparent;
            this.pb_exit.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pb_exit.BackgroundImage")));
            this.pb_exit.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_exit.Location = new System.Drawing.Point(927, 2);
            this.pb_exit.Margin = new System.Windows.Forms.Padding(4);
            this.pb_exit.Name = "pb_exit";
            this.pb_exit.Size = new System.Drawing.Size(30, 30);
            this.pb_exit.TabIndex = 38;
            this.pb_exit.TabStop = false;
            this.pb_exit.Click += new System.EventHandler(this.pb_exit_Click);
            // 
            // History
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(960, 540);
            this.Controls.Add(this.pb_exit);
            this.Controls.Add(this.lb_Name);
            this.Controls.Add(this.pb_Logo);
            this.Controls.Add(this.lv_showitem);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "History";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "History";
            this.Load += new System.EventHandler(this.History_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pb_Logo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_exit)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListView lv_showitem;
        private System.Windows.Forms.ColumnHeader TenSP;
        private System.Windows.Forms.ColumnHeader GiaSP;
        private System.Windows.Forms.PictureBox pb_Logo;
        private System.Windows.Forms.Label lb_Name;
        private System.Windows.Forms.PictureBox pb_exit;
        private System.Windows.Forms.ImageList imageList1;
    }
}