using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClickCafe
{
    public class cartItem
    {
        public int PID { get; set; }
        public string PName { get; set; }
        public float Price { get; set; }
        public string Picture { get; set; }
        public string Cname { get; set; }
       
        public string Detail { get; set; }
        public int Qnt { get; set; }
        public cartItem()
        {

        }
        public cartItem(int PID, string PName, float Price, string Picture, string Cname,  string Detail,int Qnt)
        {
            this.PID = PID;
            this.PName = PName;
            this.Price = Price;
            this.Picture = Picture;
            this.Cname = Cname;
            
            this.Detail = Detail;
            this.Qnt = Qnt;
        }
    }
}