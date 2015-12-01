using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;
using vodpoints.edmx;

namespace vodpoints.Controllers
{
    public class SupplierController : BaseController
    {
        [HttpGet]
        public ActionResult Index()
        {
            var suppliers = this.vodpointsdb.suppliers.ToList();
            return View(suppliers);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(supplier supplier)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.suppliers.Add(supplier);
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var model = this.vodpointsdb.suppliers.Find(id);

            if (model == null)
            {
                return HttpNotFound();
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(supplier supplier)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.Entry(supplier).State = EntityState.Modified;
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            var supplierToDelte = this.vodpointsdb.suppliers.Find(id);
            this.vodpointsdb.suppliers.Remove(supplierToDelte);
            this.vodpointsdb.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
