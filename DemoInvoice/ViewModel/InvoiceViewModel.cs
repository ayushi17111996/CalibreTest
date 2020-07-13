using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DemoInvoice.ViewModel
{
    public class InvoiceViewModel
    {
       
            public int InvoiceId { get; set; }
            public string CustomerName { get; set; }

            public string CompanyName { get; set; }
            public string PurchaseOrder { get; set; }
            public string InvoiceDate { get; set; }
          
        
    }
}