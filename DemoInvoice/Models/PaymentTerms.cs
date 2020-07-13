using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DemoInvoice.Models
{
    public class PaymentTerms
    {
        public int PaymentTermsId { get; set; }
        public string title { get; set; }
        public bool IsActive { get; set; }
    }
}