

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClickCafe
{
    public class cart1
    {
        public List<cartItem> Items { get; set; }

        public cart1()
        {
            Items = new List<cartItem>();
        }
        private int ItemIndexOf(int PID)
        {
            foreach (cartItem item in Items)
            {
                if (item.PID == PID)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }
        public void Insert(cartItem item)
        {
            int index = ItemIndexOf(item.PID);
            if (index == -1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].Qnt++;
            }
        }
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }
        public void Update(int rowID, int Qnt)
        {
            if (Qnt > 0)
            {
                Items[rowID].Qnt = Qnt;
            }
            else
            {
                Delete(rowID);
            }
        }
        public double Grandtotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                    double Grandtotal = 0;
                    foreach (cartItem item in Items)
                    {
                        Grandtotal += item.Qnt * item.Price;
                    }
                    return Grandtotal;
                }
            }
        }
    }
}