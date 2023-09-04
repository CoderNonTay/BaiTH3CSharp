using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Music_Online.DTO;

namespace Music_Online.DAO
{
    internal class DANHGIADAO
    {
        private static DANHGIADAO instance;
        private DANHGIADAO() { }

        internal static DANHGIADAO Instance
        {
            get { if (instance == null) instance = new DANHGIADAO(); return DANHGIADAO.instance; }
            private set { DANHGIADAO.instance = value; }
        }

        public int CheckDanhGia(string TenBaiHat, string User)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "Select * from DANHGIA where MaBaiHat = " + tmp.MaBaiHat + " and NguoiDanhGia = '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                DANHGIA dg = new DANHGIA(item);
                return dg.SoSao;
            }

            return 0;
        }

        public void AddDanhGia(string TenBaiHat, string User, int SoSao)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "insert into DANHGIA values ('" + User + "', " + tmp.MaBaiHat +", " + SoSao.ToString() + ")";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
        }

        public void UpdateDanhGia(string TenBaiHat, string User, int SoSao)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "update DANHGIA set SoSao = " + SoSao.ToString() + " where MaBaiHat = " + tmp.MaBaiHat + " and NguoiDanhGia= '" + User + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
        }

        public int TongSoLuotDanhGia(string TenBaiHat)
        {
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "select * from DANHGIA where MaBaiHat = " + tmp.MaBaiHat;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            int count = 0;
            foreach (DataRow item in data.Rows)
            {
                count++;
            }
            return count;
        }

        public double SoDiemDanhGiaTrungBinh(string TenBaiHat)
        {
            double TongDiem = 0;
            int count = 0;
            BAIHAT tmp = BAIHATDAO.Instance.ChiTietBaiHat(TenBaiHat);
            string query = "select * from DANHGIA where MaBaiHat = " + tmp.MaBaiHat;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            foreach (DataRow item in data.Rows)
            {
                DANHGIA dg = new DANHGIA(item);
                TongDiem += dg.SoSao;
                count++;
            }

            if(TongDiem == 0)
                return 0;

            return TongDiem / count;
        }
    }
}
