using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
namespace eBuyAntiquesStore2.Models
{
    public class Item
    {
        public int itemId { get; set; }
        [Required(ErrorMessage = "Item Name Required")]
        public string itemName { get; set; }
        public string itemDescription { get; set; }
        public float itemWeight { get; set; }
        public int itemAge { get; set; }
        public Nullable<int> updatedBy { get; set; }
        public Nullable<System.DateTime> updatedOn { get; set; }
        public System.DateTime addedDate { get; set; }
        public string currencyCode { get; set; }
        public int categoryId { get; set; }
        public string itemImage { get; set; }
        public Nullable<byte> boughtFromCustomer { get; set; }
        public int customerID { get; set; }
        [Required]
        [Range(typeof(int), "1", "500", ErrorMessage = "Invalid Quantity")]
        public int quantity { get; set; }
        [Required]
        [Range(typeof(decimal), "1", "200000", ErrorMessage = "invalid Price")]
        public float itemPrice { get; set; }
        public SelectList Categories { get; set; }
    }
}