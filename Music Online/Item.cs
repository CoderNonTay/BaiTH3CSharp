using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Music_Online.DAO;
using Music_Online.DTO;

namespace Music_Online
{
    public partial class Item : Form
    {
        public Item()
        {
            InitializeComponent();
        }


        bool added = YEUTHICHDAO.Instance.CheckYeuThich(Global.current_item, Global.current_user); //Đã được thêm vào yêu thích
        int SoSao = DANHGIADAO.Instance.CheckDanhGia(Global.current_item, Global.current_user);//Check coi tai khoan nay da danh gia chua

        private void pb_exit_Click(object sender, EventArgs e)
        {
            const string message =
"Do you want to return home?";
            const string caption = "Return home!";
            var result = MessageBox.Show(message, caption,
                                         MessageBoxButtons.YesNo,
                                         MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                wmp.Ctlcontrols.stop();
                this.Close();
                Home home = new Home();
                home.Show();
            }
        }

        private void Item_Load(object sender, EventArgs e)
        {
            if (added == true)
            {
                pb_heart_black.Visible = true;
                pb_heart_trans.Visible = false;
            }

            LICHSUDAO.Instance.ThemVaoLichSu(Global.current_user, Global.current_item);
            pb_theme.BackgroundImage = imageList1.Images[Global.current_item + ".jpg"];
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(Global.current_item);
            lb_BaiHat.Text = tmp.TenBaiHat;
            lb_Casi.Text = tmp.CaSi + " - Sáng tác:" + tmp.TacGia;
            tb_Lời.Text = tmp.LoiBaiHat;
            wmp.URL = Global.current_item + ".mp3";
            wmp.Ctlcontrols.play();
            TongSoDanhGia.Text = "(" + DANHGIADAO.Instance.TongSoLuotDanhGia(Global.current_item).ToString() + ")";
            SetSoSao();

            List<BINHLUAN> list = new List<BINHLUAN>();
            list = BINHLUANDAO.Instance.LoadTatCaBinhLuan(Global.current_item);
            foreach(BINHLUAN item in list)
            {
                tb_all_cmt.Text = tb_all_cmt.Text + item.NguoiDanhGia + ": " + item.BinhLuan;
                tb_all_cmt.Text += "\r\n";
            }
        }

        private void SetSoSao()
        {
            switch (SoSao)
            {
                case 0:
                    bt_BStar1.Visible = false;
                    bt_TStar1.Visible = true;
                    bt_BStar2.Visible = false;
                    bt_TStar2.Visible = true;
                    bt_BStar3.Visible = false;
                    bt_TStar3.Visible = true;
                    bt_BStar4.Visible = false;
                    bt_TStar4.Visible = true;
                    bt_BStar5.Visible = false;
                    bt_TStar5.Visible = true;
                    break;
                case 1:
                    bt_TStar1.Visible= false;
                    bt_BStar1.Visible= true;
                    bt_BStar2.Visible = false;
                    bt_TStar2.Visible = true;
                    bt_BStar3.Visible = false;
                    bt_TStar3.Visible = true;
                    bt_BStar4.Visible = false;
                    bt_TStar4.Visible = true;
                    bt_BStar5.Visible = false;
                    bt_TStar5.Visible = true;
                    break;
                case 2:
                    bt_TStar1.Visible = false;
                    bt_BStar1.Visible = true;
                    bt_TStar2.Visible = false;
                    bt_BStar2.Visible = true;
                    bt_BStar3.Visible = false;
                    bt_TStar3.Visible = true;
                    bt_BStar4.Visible = false;
                    bt_TStar4.Visible = true;
                    bt_BStar5.Visible = false;
                    bt_TStar5.Visible = true;
                    break;
                case 3:
                    bt_TStar1.Visible = false;
                    bt_BStar1.Visible = true;
                    bt_TStar2.Visible = false;
                    bt_BStar2.Visible = true;
                    bt_TStar3.Visible = false;
                    bt_BStar3.Visible = true;
                    bt_BStar4.Visible = false;
                    bt_TStar4.Visible = true;
                    bt_BStar5.Visible = false;
                    bt_TStar5.Visible = true;
                    break;
                case 4:
                    bt_TStar1.Visible = false;
                    bt_BStar1.Visible = true;
                    bt_TStar2.Visible = false;
                    bt_BStar2.Visible = true;
                    bt_TStar3.Visible = false;
                    bt_BStar3.Visible = true;
                    bt_TStar4.Visible = false;
                    bt_BStar4.Visible = true;
                    bt_BStar5.Visible = false;
                    bt_TStar5.Visible = true;
                    break;
                case 5:
                    bt_TStar1.Visible = false;
                    bt_BStar1.Visible = true;
                    bt_TStar2.Visible = false;
                    bt_BStar2.Visible = true;
                    bt_TStar3.Visible = false;
                    bt_BStar3.Visible = true;
                    bt_TStar4.Visible = false;
                    bt_BStar4.Visible = true;
                    bt_TStar5.Visible = false;
                    bt_BStar5.Visible = true;
                    break;
            }

            avgDanhGia.Text = Math.Round(DANHGIADAO.Instance.SoDiemDanhGiaTrungBinh(Global.current_item), 1).ToString() + "/5";
        }

        private void bt_TStar1_MouseEnter(object sender, EventArgs e)
        {
            if (SoSao < 1)
            {
                bt_TStar1.Visible= false;
                bt_BStar1.Visible= true;
            }
        }

        private void bt_BStar1_MouseLeave(object sender, EventArgs e)
        {
            if (SoSao < 1)
            {
                bt_BStar1.Visible = false;
                bt_TStar1.Visible = true;
            }
            SetSoSao();
        }

        private void bt_BStar1_Click(object sender, EventArgs e)
        {
            if (SoSao != 1)
            { DialogResult dlr = MessageBox.Show("Bạn đã đánh giá bài hát 1 sao", "Vote", MessageBoxButtons.OK); }

            if (SoSao == 0)
                DANHGIADAO.Instance.AddDanhGia(Global.current_item, Global.current_user, 1);
            else if (SoSao != 1)
                DANHGIADAO.Instance.UpdateDanhGia(Global.current_item, Global.current_user, 1);

            SoSao = 1;
            SetSoSao();
        }

        private void bt_TStar2_MouseEnter(object sender, EventArgs e)
        {
            if (SoSao < 2)
            {
                bt_TStar1.Visible = false;
                bt_BStar1.Visible = true;
                bt_TStar2.Visible = false;
                bt_BStar2.Visible = true;
            }
        }

        private void bt_BStar2_MouseLeave(object sender, EventArgs e)
        {
            if (SoSao < 2)
            {
                bt_BStar1.Visible = false;
                bt_TStar1.Visible = true;
                bt_BStar2.Visible = false;
                bt_TStar2.Visible = true;
            }
            SetSoSao();
        }

        private void bt_BStar2_Click(object sender, EventArgs e)
        {
            if (SoSao != 2)
            { DialogResult dlr = MessageBox.Show("Bạn đã đánh giá bài hát 2 sao", "Vote", MessageBoxButtons.OK); }

            if (SoSao == 0)
                DANHGIADAO.Instance.AddDanhGia(Global.current_item, Global.current_user, 2);
            else if (SoSao != 2)
                DANHGIADAO.Instance.UpdateDanhGia(Global.current_item, Global.current_user, 2);

            SoSao = 2;
            SetSoSao();
        }
    

        private void bt_TStar3_MouseEnter(object sender, EventArgs e)
        {
            if (SoSao < 3)
            {
                bt_TStar1.Visible = false;
                bt_BStar1.Visible = true;
                bt_TStar2.Visible = false;
                bt_BStar2.Visible = true;
                bt_TStar3.Visible = false;
                bt_BStar3.Visible = true;
            }
        }

        private void bt_BStar3_MouseLeave(object sender, EventArgs e)
        {   if (SoSao < 3)
            {
                bt_BStar1.Visible = false;
                bt_TStar1.Visible = true;
                bt_BStar2.Visible = false;
                bt_TStar2.Visible = true;
                bt_BStar3.Visible = false;
                bt_TStar3.Visible = true;
            }

            SetSoSao();
        }

        private void bt_BStar3_Click(object sender, EventArgs e)
        {
            if (SoSao != 3)
            { DialogResult dlr = MessageBox.Show("Bạn đã đánh giá bài hát 3 sao", "Vote", MessageBoxButtons.OK); }

            if (SoSao == 0)
                DANHGIADAO.Instance.AddDanhGia(Global.current_item, Global.current_user, 3);
            else if (SoSao != 3)
                DANHGIADAO.Instance.UpdateDanhGia(Global.current_item, Global.current_user, 3);

            SoSao = 3;
            SetSoSao();
        }

        private void bt_TStar4_MouseEnter(object sender, EventArgs e)
        {
            if (SoSao < 4)
            {
                bt_TStar1.Visible = false;
                bt_BStar1.Visible = true;
                bt_TStar2.Visible = false;
                bt_BStar2.Visible = true;
                bt_TStar3.Visible = false;
                bt_BStar3.Visible = true;
                bt_TStar4.Visible = false;
                bt_BStar4.Visible = true;
            }
        }

        private void bt_BStar4_MouseLeave(object sender, EventArgs e)
        {
            if (SoSao < 4)
            {
                bt_BStar1.Visible = false;
                bt_TStar1.Visible = true;
                bt_BStar2.Visible = false;
                bt_TStar2.Visible = true;
                bt_BStar3.Visible = false;
                bt_TStar3.Visible = true;
                bt_BStar4.Visible = false;
                bt_TStar4.Visible = true;
            }

            SetSoSao();
        }

        private void bt_BStar4_Click(object sender, EventArgs e)
        {
            if (SoSao != 4)
            { DialogResult dlr = MessageBox.Show("Bạn đã đánh giá bài hát 4 sao", "Vote", MessageBoxButtons.OK); }

            if (SoSao == 0)
                DANHGIADAO.Instance.AddDanhGia(Global.current_item, Global.current_user, 4);
            else if (SoSao != 4)
                DANHGIADAO.Instance.UpdateDanhGia(Global.current_item, Global.current_user, 4);

            SoSao = 4;
            SetSoSao();
        }

        private void bt_TStar5_MouseEnter(object sender, EventArgs e)
        {
            if (SoSao < 5)
            {
                bt_TStar1.Visible = false;
                bt_BStar1.Visible = true;
                bt_TStar2.Visible = false;
                bt_BStar2.Visible = true;
                bt_TStar3.Visible = false;
                bt_BStar3.Visible = true;
                bt_TStar4.Visible = false;
                bt_BStar4.Visible = true;
                bt_TStar5.Visible = false;
                bt_BStar5.Visible = true;
            }
        }

        private void bt_BStar5_MouseLeave(object sender, EventArgs e)
        {
            if (SoSao < 5)
            {
                bt_BStar1.Visible = false;
                bt_TStar1.Visible = true;
                bt_BStar2.Visible = false;
                bt_TStar2.Visible = true;
                bt_BStar3.Visible = false;
                bt_TStar3.Visible = true;
                bt_BStar4.Visible = false;
                bt_TStar4.Visible = true;
                bt_BStar5.Visible = false;
                bt_TStar5.Visible = true;
            }

            SetSoSao();
        }

        private void bt_BStar5_Click(object sender, EventArgs e)
        {
            if (SoSao != 5)
            { DialogResult dlr = MessageBox.Show("Bạn đã đánh giá bài hát 5 sao", "Vote", MessageBoxButtons.OK); }

            if(SoSao == 0)
                DANHGIADAO.Instance.AddDanhGia(Global.current_item, Global.current_user, 5);
            else if(SoSao != 5)
                DANHGIADAO.Instance.UpdateDanhGia(Global.current_item, Global.current_user, 5);

            SoSao = 5;
            SetSoSao();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (tb_cmt.Text != "")
            {
                BINHLUANDAO.Instance.AddBinhLuan(Global.current_user, Global.current_item, tb_cmt.Text);
                tb_all_cmt.Text = Global.current_user + ": " + tb_cmt.Text +  "\r\n" + tb_all_cmt.Text ;
                tb_cmt.Text = "";
            }
        }

        private void tb_cmt_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                button1_Click(this, new EventArgs());
            }
        }

        private void pb_heart_trans_MouseEnter(object sender, EventArgs e)
        {
            if (added == false)
            {
                pb_heart_black.Visible = true;
                pb_heart_trans.Visible = false;
            }
        }

        private void pb_heart_black_MouseLeave(object sender, EventArgs e)
        {
            if (added == false)
            {
                pb_heart_black.Visible = false;
                pb_heart_trans.Visible = true;
            }
        }

        private void pb_heart_black_Click(object sender, EventArgs e)
        {
            if (added == false)
            {
                DialogResult dlr = MessageBox.Show("Bạn đã thêm bài hát vào yêu thích!", "Thêm vào yêu thích", MessageBoxButtons.OK);
                YEUTHICHDAO.Instance.AddYeuThich(Global.current_item, Global.current_user);
                added = true;
                pb_heart_black.Visible = true;
                pb_heart_trans.Visible = false;
            }

            else
            {
                DialogResult dlr = MessageBox.Show("Bạn đã bỏ yêu thích bài hát này!", "Bỏ yêu thích", MessageBoxButtons.OK);
                YEUTHICHDAO.Instance.DeleteYeuThich(Global.current_item, Global.current_user);
                added=false;
                pb_heart_trans.Visible = true;
                pb_heart_black.Visible = false;
            }
        }
    }
}   
