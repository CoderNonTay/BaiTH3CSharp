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
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }

        private void pb_exit_Click(object sender, EventArgs e)
        {
            const string message =
  "Do you want to exit?";
            const string caption = "Exit App!";
            var result = MessageBox.Show(message, caption,
                                         MessageBoxButtons.YesNo,
                                         MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                System.Windows.Forms.Application.Exit();
            }
        }

        private void f_Home_Load(object sender, EventArgs e)
        {
            List<BAIHAT> list = new List<BAIHAT>();
            list = BAIHATDAO.Instance.LayTatCaBaiHat();
            foreach (BAIHAT item in list)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat+ "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
        }

        private void lv_showitem_ItemSelectionChanged(object sender, ListViewItemSelectionChangedEventArgs e)
        {
            string[] arrListStr = e.Item.Text.Split('\n');
            Global.current_item = arrListStr[0];
            Item item = new Item();
            item.Show();
            this.Hide();
        }

        private void btnKiemTra_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByName(tb_search.Text);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
        }

        private void tb_search_KeyDown(object sender, KeyEventArgs e)
        {

            if (e.KeyCode == Keys.Enter)
            {
               btnKiemTra_Click(this, new EventArgs());
            }
        }

        private void pb_personal_Click(object sender, EventArgs e)
        {
            History history = new History();
            history.Show();
            this.Hide();
        }

        private void pb_Favorite_Click(object sender, EventArgs e)
        {
            Favorite favorite = new Favorite();
            favorite.Show();
            this.Hide();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(1);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(2);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void button3_Click(object sender, EventArgs e)
        {

            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(3);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(4);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(5);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            List<BAIHAT> Items = new List<BAIHAT>();
            lv_showitem.Clear();
            Items = BAIHATDAO.Instance.SearchBaiHatByMaTheLoai(6);
            foreach (BAIHAT item in Items)
            {
                var listViewItem = lv_showitem.Items.Add(item.TenBaiHat + "\n" + item.CaSi.ToString());
                listViewItem.ForeColor = Color.Red;
                listViewItem.ImageKey = item.TenBaiHat + ".jpg";
            }
            panel1.Visible = false;
        }

        private void bt_TheLoai_Click(object sender, EventArgs e)
        {
            if (panel1.Visible == true)
                panel1.Visible = false;
            else
                panel1.Visible = true;
        }
    
    }
}
