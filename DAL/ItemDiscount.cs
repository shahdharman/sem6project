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
    
    public partial class ItemDiscount
    {
        public int itemID { get; set; }
        public System.DateTime startDatetimeStamp { get; set; }
        public System.DateTime endDatetimeStamp { get; set; }
        public double discount { get; set; }
        public int discountID { get; set; }
    
        public virtual ItemMaster ItemMaster { get; set; }
        public virtual ItemDiscount ItemDiscount1 { get; set; }
        public virtual ItemDiscount ItemDiscount2 { get; set; }
        public virtual ItemDiscount ItemDiscount11 { get; set; }
        public virtual ItemDiscount ItemDiscount3 { get; set; }
        public virtual ItemMaster ItemMaster1 { get; set; }
    }
}
