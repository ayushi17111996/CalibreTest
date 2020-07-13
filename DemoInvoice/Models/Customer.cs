using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DemoInvoice.Models
{
    public class Customer
    {
        public int CustomerId { get; set; }
        [Required]
        [DisplayName("Customer Name")]
        public string CustomerName { get; set; }
        [Required]
        [DisplayName("Company Name")]
        public string CompanyName { get; set; }
        [Required]
        public string EmailId { get; set; }
        [Required]
        [MaxLength(12)]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Mobile No must be numeric")]
        [DisplayName("Mobile No")]
        public string MobileNo { get; set; }
        [Required]
        [DisplayName("Payment Terms")]
        public int PaymentTermsId { get; set; }
        [Required]
        public string AddressLine1 { get; set; }
        [Required]
        public string AddressLine2 { get; set; }
        [Required]
        [MaxLength(6)]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Pincode must be numeric")]
        public string Pincode { get; set; }
        [Required]
        public string City { get; set; }
        [Required]
        public string State { get; set; }
        public bool IsActive { get; set; }
    }
}