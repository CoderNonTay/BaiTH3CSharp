using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Music_Online.DTO;

namespace Music_Online.DAO
{
    internal class YEUTHICHDAO
    {
        private static YEUTHICHDAO instance;
        private YEUTHICHDAO() { }

        internal static YEUTHICHDAO Instance
        {
            get { if (instance == null) instance = new YEUTHICHDAO(); return YEUTHICHDAO.instance; }
            private set { YEUTHICHDAO.instance = value; }
        }

        public bool CheckYeuThich(string TenBaiHat, string User)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "Select * from YEUTHICH where MaBaiHat = " + tmp.MaBaiHat + " and NguoiDung = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                return true;
            }

            return false;
        }

        public void AddYeuThich(string TenBaiHat, string User)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "insert into YEUTHICH values (" + tmp.MaBaiHat + ", '" + User +"')";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
        }

        public void DeleteYeuThich(string TenBaiHat, string User)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "Delete from YEUTHICH where MaBaiHat = " + tmp.MaBaiHat + " and NguoiDung = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
        }

        public List<BAIHAT> LoadTatCaYeuThich(string User)
        {
            List<BAIHAT> tmp = new List<BAIHAT>();
            string query = "Select * from YEUTHICH where NguoiDung = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                YEUTHICH yt = new YEUTHICH(item);
                tmp.Add(BAIHATDAO.Instance.SearchBaiHatByMa(yt.MaBaiHat));
            }

            return tmp;
        }
    }
}
