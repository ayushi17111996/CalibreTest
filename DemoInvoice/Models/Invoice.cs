using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DemoInvoice.Models
{
    public class Invoice
    {
        public int InvoiceId { get; set; }
        [Required]
        public int CustomerId { get; set; }
        [Required]
        [DisplayName("Purchase Order")]
        public string PurchaseOrder { get; set; }
        [Required]
        [DisplayName("Invoice Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime InvoiceDate { get; set; }
        [Required]
        [DisplayName("Payment Terms")]
        public int PaymentTermsId { get; set; }
        [Required]
        [DisplayName("Sales TaxRate")]
        [RegularExpression(@"^[0-9]+(\.[0-9]{1,2})$", ErrorMessage = "Valid SalesTax Rate with maximum 2 decimal places.")]
        public double SalesTaxRate { get; set; }
        [Required]
        [RegularExpression(@"^[0-9]+(\.[0-9]{1,2})$", ErrorMessage = "Valid Discount with maximum 2 decimal places.")]
        public double Discount { get; set; }
        public string Comments { get; set; }
        public bool IsActive { get; set; }
    }
}