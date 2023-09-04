using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Music_Online.DTO;
using System.Data;

namespace Music_Online.DAO
{
    internal class BAIHATDAO
    {
        private static BAIHATDAO instance;

        internal static BAIHATDAO Instance
        {
            get { if (instance == null) instance = new BAIHATDAO(); return BAIHATDAO.instance; }
            private set { BAIHATDAO.instance = value; }
        }

        private BAIHATDAO() { }

        public List<BAIHAT> LayTatCaBaiHat()
        {
            List<BAIHAT> list = new List<BAIHAT>();
            string query = "select * from BAIHAT";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            foreach (DataRow row in data.Rows)
            {
                BAIHAT temp = new BAIHAT(row);
                list.Add(temp);
            }

            return list;
        }

         public List<BAIHAT> SearchBaiHatByName(string name)
        {
            List<BAIHAT> list = new List<BAIHAT>();

            string query = string.Format("SELECT * FROM BAIHAT WHERE dbo.fuConvertToUnsign1(TenBaiHat) LIKE N'%' + dbo.fuConvertToUnsign1(N'{0}') + '%'", name);

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                BAIHAT SP = new BAIHAT(item);
                list.Add(SP);
            }

            return list;
        }

        public List<BAIHAT> SearchBaiHatByMaTheLoai(int MaTheLoai)
        {
            List<BAIHAT> list = new List<BAIHAT>();

            string query = "SELECT * FROM BAIHAT WHERE MaTheLoai = " + MaTheLoai;

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                BAIHAT SP = new BAIHAT(item);
                list.Add(SP);
            }

            return list;
        }
        public BAIHAT ChiTietBaiHat(string name)
        {
            string query = "Select * from BAIHAT where TenBaiHat = N'" + name + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                BAIHAT result = new BAIHAT(item);
                return result;
            }

            return null;
        }

        public BAIHAT SearchBaiHatByMa(int Ma)
        {
            string query = "Select * from BAIHAT where MaBaiHat = " + Ma;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                BAIHAT result = new BAIHAT(item);
                return result;
            }

            return null;
        }
    }
}
