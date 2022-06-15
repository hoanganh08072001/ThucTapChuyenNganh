using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebThucTap
{
    public class CartItem
    {
        public Product product { get; set; }
        public int quantity;
        public CartItem()
        {
            product = new Product();
        }
        public override bool Equals(object obj)
        {
            CartItem c = (CartItem)obj;
            return this.product.Pid.Equals(c.product.Pid);
        }
    }
}