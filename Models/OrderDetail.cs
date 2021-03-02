using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eBuyAntiquesStore2.Models
{
    public class OrderDetail
    {
        public int itemID { get; set; }
        public int quantity { get; set; }
        public int orderDetailsID { get; set; }
        public int orderID { get; set; }
    }
}