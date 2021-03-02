using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eBuyAntiquesStore2.Models
{
    public class Order
    {
        public int orderID { get; set; }
        public int customerID { get; set; }
        public int orderNumber { get; set; }
        public int paymentType { get; set; }
        public double tax { get; set; }
        public double totalPrice { get; set; }
        public double subtotal { get; set; }
        public string shippingAddress { get; set; }
        public System.DateTime orderDateTime { get; set; }
    }
}