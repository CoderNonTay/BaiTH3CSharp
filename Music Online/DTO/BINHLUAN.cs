using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace Music_Online.DTO
{
    internal class BINHLUAN
    {
        private int id;
        private string nguoiDanhGia;
        private int maBaiHat;
        private string binhLuan;

        public int Id { get => id; set => id=value; }
        public string NguoiDanhGia { get => nguoiDanhGia; set => nguoiDanhGia=value; }
        public int MaBaiHat { get => maBaiHat; set => maBaiHat=value; }
        public string BinhLuan { get => binhLuan; set => binhLuan=value; }

        public BINHLUAN(int id, string ndg, int ma, string cmt)
        {
            this.Id = id;
            this.NguoiDanhGia = ndg;
            this.MaBaiHat = ma;
            this.BinhLuan = cmt;
        }

        public BINHLUAN(DataRow row)
        {
            this.Id = (int)row["Id"]; 
            this.NguoiDanhGia = row["NguoiDanhGia"].ToString();
            this.MaBaiHat = (int)row["MaBaiHat"];
            this.BinhLuan = row["BinhLuan"].ToString();
        }
    }

}
