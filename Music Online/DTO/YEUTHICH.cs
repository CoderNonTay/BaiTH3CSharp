using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Music_Online.DTO
{
    internal class YEUTHICH

    {
        private int maBaiHat;
        private string nguoiDung;

        public int MaBaiHat { get => maBaiHat; set => maBaiHat=value; }
        public string NguoiDung { get => nguoiDung; set => nguoiDung=value; }

        public YEUTHICH(int ma, string nd)
        {
            this.MaBaiHat=ma;
            this.NguoiDung=nd;
        }

        public YEUTHICH(DataRow row)
        {
            this.MaBaiHat = (int)row["MaBaiHat"];
            this.NguoiDung = row["NguoiDung"].ToString();
        }
    }
}
