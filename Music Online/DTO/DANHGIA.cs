using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Music_Online.DTO
{
    internal class DANHGIA
    {
        private string nguoiDanhGia;
        private int maBaiHat;
        private int soSao;

        public string NguoiDanhGia { get => nguoiDanhGia; set => nguoiDanhGia=value; }
        public int MaBaiHat { get => maBaiHat; set => maBaiHat=value; }
        public int SoSao { get => soSao; set => soSao=value; }

        public DANHGIA(string ndg, int ma, int sao)
        {
            this.NguoiDanhGia=ndg;
            this.MaBaiHat=ma;
            this.SoSao=sao;
        }

        public DANHGIA(DataRow row)
        {
            this.NguoiDanhGia = row["NguoiDanhGia"].ToString();
            this.MaBaiHat = (int)row["MaBaiHat"];
            this.SoSao = (int)row["SoSao"];
        }
    }
}
