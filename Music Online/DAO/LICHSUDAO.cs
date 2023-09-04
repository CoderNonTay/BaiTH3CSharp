using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Music_Online.DAO;
using Music_Online.DTO;

namespace Music_Online.DAO
{
    internal class LICHSUDAO
    {

        private static LICHSUDAO instance;
        private LICHSUDAO() { }

        internal static LICHSUDAO Instance
        {
            get { if (instance == null) instance = new LICHSUDAO(); return LICHSUDAO.instance; }
            private set { LICHSUDAO.instance = value; }
        }
        public List<BAIHAT> LoadTatCaLichSu(string User)
        {
            List<BAIHAT> tmp = new List<BAIHAT>();
            string query = "Select * from LICHSU where NguoiDung = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                YEUTHICH yt = new YEUTHICH(item);
                tmp.Insert(0, BAIHATDAO.Instance.SearchBaiHatByMa(yt.MaBaiHat));
            }

            return tmp;
        }

        public void ThemVaoLichSu(string User, string TenBaiHat)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "Delete from LICHSU where MaBaiHat = " + tmp.MaBaiHat + " and NguoiDung = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            string query_1 = "insert into LICHSU values (" + tmp.MaBaiHat + ", '" + User +"')";
            DataTable data_1 = DataProvider.Instance.ExecuteQuery(query_1);
        }
    }
}
