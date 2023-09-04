using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Music_Online.DTO;

namespace Music_Online.DAO
{
    internal class BINHLUANDAO
    {
        private static BINHLUANDAO instance;
        private BINHLUANDAO() { }

        internal static BINHLUANDAO Instance
        {
            get { if (instance == null) instance = new BINHLUANDAO(); return BINHLUANDAO.instance; }
            private set { BINHLUANDAO.instance = value; }
        }

        public List<BINHLUAN> LoadTatCaBinhLuan(string TenBaiHat)
        {

            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            List<BINHLUAN> list = new List<BINHLUAN>();
            string query = "Select * from BINHLUAN where MaBaiHat = " + tmp.MaBaiHat;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                BINHLUAN cmt = new BINHLUAN(item);
                list.Insert(0,cmt);
            }

            return list;
        }

        public void AddBinhLuan(string User, string TenBaiHat, string cmt)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "insert into BINHLUAN values ('" + User + "', " + tmp.MaBaiHat + ", N'" + cmt + "')";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
        }
    }
}
