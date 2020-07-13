using Dapper;
using DemoInvoice.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DemoInvoice.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Loaddata()
        {
                var data = DapperORM.ReturnList<Customer>("sp_customer_select").ToList();
                return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }

        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Paymentterms = new SelectList(DapperORM.ReturnList<PaymentTerms>("sp_PaymentTerms_select").ToList(), "PaymentTermsId", "title");
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@CustomerId", id);
                return View(DapperORM.ReturnList<Customer>("sp_customer_select_by_id", param).FirstOrDefault<Customer>());
            }
        }

        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            if (customer.CustomerId!=0)
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("CustomerId", customer.CustomerId);
                param.Add("CustomerName", customer.CustomerName);
                param.Add("CompanyName", customer.CompanyName);
                param.Add("EmailId", customer.EmailId);
                param.Add("MobileNo", customer.MobileNo);
                param.Add("PaymentTermsId", customer.PaymentTermsId);
                param.Add("AddressLine1", customer.AddressLine1);
                param.Add("AddressLine2", customer.AddressLine2);
                param.Add("Pincode", customer.Pincode);
                param.Add("City", customer.City);
                param.Add("State", customer.State);
                param.Add("IsActive", customer.IsActive);
                DapperORM.ExecuteWithoutReturn("sp_customer_update", param);
            }
            else
            { 
            DynamicParameters param = new DynamicParameters();
            param.Add("CustomerName", customer.CustomerName);
            param.Add("CompanyName", customer.CompanyName);
            param.Add("EmailId", customer.EmailId);
            param.Add("MobileNo", customer.MobileNo);
            param.Add("PaymentTermsId", customer.PaymentTermsId);
            param.Add("AddressLine1", customer.AddressLine1);
            param.Add("AddressLine2", customer.AddressLine2);
            param.Add("Pincode", customer.Pincode);
            param.Add("City", customer.City);
            param.Add("State", customer.State);
            param.Add("IsActive", customer.IsActive);
            DapperORM.ExecuteWithoutReturn("sp_customer_insert", param);
            }
            return RedirectToAction("Index");

        }

    }
}