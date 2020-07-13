using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DemoInvoice.ViewModel
{
    public class InvoicePreviewViewModel
    {
        public int InvoiceId { get; set; }
        public string PurchaseOrder { get; set; }
        public string InvoiceDate { get; set; }
        public string SalesTaxRate { get; set; }
        public string Discount { get; set; }
        public string Comments { get; set; }
        public string CompanyName { get; set; }
        public string CustomerName { get; set; }
        public string EmailId { get; set; }
        public string MobileNo { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Pincode { get; set; }
    }
}