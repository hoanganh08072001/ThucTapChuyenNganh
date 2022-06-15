using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebThucTap
{
    public class Product
    {
        public string Pid { get; set; }
        public string ProdName { get; set; }
        public string Categoryid { get; set; }
        public string MetaTitle { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public decimal Price { get; set; }
    }
}