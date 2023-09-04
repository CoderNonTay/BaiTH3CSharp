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
    public partial class Favorite : Form
    {
        public Favorite()
        {
            InitializeComponent();
        }

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
                this.Close();
                Home home = new Home();
                home.Show();
            }
        }

        private void Favorite_Load(object sender, EventArgs e)
        {
            List<BAIHAT> list = new List<BAIHAT>();
            list = YEUTHICHDAO.Instance.LoadTatCaYeuThich(Global.current_user);

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
    }
}
