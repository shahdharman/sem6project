using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace eBuyAntiquesStore2.Models
{
    public class Category
    {
        public int categoryId { get; set; }


        [Required(ErrorMessage = "Category Name Required")]
        public string categoryName { get; set; }
        public string categoryDescription { get; set; }
        public Nullable<int> updatedBy { get; set; }
        public Nullable<System.DateTime> updatedOn { get; set; }
        public System.DateTime addedDate { get; set; }
        public string categoryImage { get; set; }

    }
}