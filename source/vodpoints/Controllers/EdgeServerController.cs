using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;
using vodpoints.edmx;

namespace vodpoints.Controllers
{
    public class EdgeServerController : BaseController
    {
        [HttpGet]
        public ActionResult Index()
        {
            var edgeservers = this.vodpointsdb.edgeservers.ToList();
            return View(edgeservers);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(edgeserver edgeserver)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.edgeservers.Add(edgeserver);
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var model = this.vodpointsdb.edgeservers.Find(id);

            if (model == null)
            {
                return HttpNotFound();
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(edgeserver edgeserver)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.Entry(edgeserver).State = EntityState.Modified;
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            var edgeserver = this.vodpointsdb.edgeservers.Find(id);
            this.vodpointsdb.edgeservers.Remove(edgeserver);
            this.vodpointsdb.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
