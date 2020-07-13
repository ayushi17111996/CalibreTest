using Dapper;
using DemoInvoice.Models;
using DemoInvoice.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DemoInvoice.Controllers
{
    public class InvoiceController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Loaddata()
        {
            var data = DapperORM.ReturnList<InvoiceViewModel>("sp_invoice_select").ToList();
            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult Preview(int id)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@InvoiceId", id);
            return View(DapperORM.ReturnList<InvoicePreviewViewModel>("sp_invoice_preview_by_id", param).FirstOrDefault<InvoicePreviewViewModel>());
        }

        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.CustomerDetails = new SelectList(DapperORM.ReturnList<CustomerDetailViewModel>("sp_customer_select_dropdown").ToList(), "CustomerId", "CustomerName");
            ViewBag.Paymentterms = new SelectList(DapperORM.ReturnList<PaymentTerms>("sp_PaymentTerms_select").ToList(), "PaymentTermsId", "title");
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@InvoiceId", id);
                return View(DapperORM.ReturnList<Invoice>("sp_invoice_select_by_id", param).FirstOrDefault<Invoice>());
            }
        }

        [HttpPost]
        public ActionResult Create(Invoice invoice)
        {
            if (invoice.InvoiceId != 0)
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("InvoiceId", invoice.InvoiceId);
                param.Add("CustomerId", invoice.CustomerId);
                param.Add("PurchaseOrder", invoice.PurchaseOrder);
                param.Add("InvoiceDate", invoice.InvoiceDate);
                param.Add("PaymentTermsId", invoice.PaymentTermsId);
                param.Add("SalesTaxRate", invoice.SalesTaxRate);
                param.Add("Discount", invoice.Discount);
                param.Add("Comments", invoice.Comments);
                param.Add("IsActive", invoice.IsActive);
                DapperORM.ExecuteWithoutReturn("sp_invoice_update", param);
            }
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("CustomerId", invoice.CustomerId);
                param.Add("PurchaseOrder", invoice.PurchaseOrder);
                param.Add("InvoiceDate", invoice.InvoiceDate);
                param.Add("PaymentTermsId", invoice.PaymentTermsId);
                param.Add("SalesTaxRate", invoice.SalesTaxRate);
                param.Add("Discount", invoice.Discount);
                param.Add("Comments", invoice.Comments);
                param.Add("IsActive", invoice.IsActive);
                DapperORM.ExecuteWithoutReturn("sp_invoice_insert", param);
            }
            return RedirectToAction("Index");

        }
    }
}