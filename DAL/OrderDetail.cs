//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eBuyAntiquesStore2.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderDetail
    {
        public int itemID { get; set; }
        public int quantity { get; set; }
        public int orderDetailsID { get; set; }
        public int orderID { get; set; }
    
        public virtual Order Order { get; set; }
        public virtual OrderDetail OrderDetails1 { get; set; }
        public virtual OrderDetail OrderDetail1 { get; set; }
        public virtual OrderDetail OrderDetails11 { get; set; }
        public virtual OrderDetail OrderDetail2 { get; set; }
        public virtual OrderDetail OrderDetails12 { get; set; }
        public virtual OrderDetail OrderDetail3 { get; set; }
        public virtual OrderDetail OrderDetails13 { get; set; }
        public virtual OrderDetail OrderDetail4 { get; set; }
    }
}