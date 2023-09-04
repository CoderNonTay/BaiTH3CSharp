using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Music_Online.DTO
{
    internal class BAIHAT
    {
        private int maBaiHat;
        private string tenBaiHat;
        private int maTheLoai;
        private string tacGia;
        private string caSi;
        private string loiBaiHat;

        public int MaBaiHat { get => maBaiHat; set => maBaiHat=value; }
        public string TenBaiHat { get => tenBaiHat; set => tenBaiHat=value; }
        public int MaTheLoai { get => maTheLoai; set => maTheLoai=value; }
        public string TacGia { get => tacGia; set => tacGia=value; }
        public string CaSi { get => caSi; set => caSi=value; }
        public string LoiBaiHat { get => loiBaiHat; set => loiBaiHat=value; }

        public BAIHAT(int ma, string ten, int matl, string tg, string cs, string loi)
        {
            this.MaBaiHat = ma;
            this.TenBaiHat = ten;
            this.MaTheLoai = matl;
            this.TacGia = tg;
            this.CaSi = cs;
            this.LoiBaiHat = loi;
        }

        public BAIHAT(DataRow row)
        {
            this.MaBaiHat = (int)row["MaBaiHat"];
            this.TenBaiHat = row["TenBaiHat"].ToString();
            this.MaTheLoai = (int)row["MaTheLoai"];
            this.TacGia = row["TacGia"].ToString();
            this.CaSi = row["CaSi"].ToString();
            this.LoiBaiHat = row["LoiBaiHat"].ToString();
        }
    }
}
