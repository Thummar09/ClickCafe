using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClickCafe
{
    public class cart
    {
        private List<cartItem> Items { get; set; }

        public cart()
        {
            Items = nem List<cartItem>();
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
        public void Insert(cartitem item)
        {
            int index = ItemIndexOf(item.PID);
            if(index==-1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].Quantity++;
            }
        }
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }
        public void Update(int rowID,int Quantity)
        {
            if(Quantity>0)
            {
                Items[rowID].Quantity = Quantity;
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
                if(Items == null)
                {
                    return 0;
                }
                else
                {
                    double Grandtotal = 0;
                    foreach (cartItem item in Items)
                    {
                        Grandtotal += item.Quantity * item.price;
                    }
                    return Grandtotal;
                }
            }
        }
    }
}