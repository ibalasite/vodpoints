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
    public class ManagerController : BaseController
    {
        [HttpGet]
        public ActionResult Index()
        {
            var managers = this.vodpointsdb.managers.ToList();
            return View(managers);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(manager manager)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.managers.Add(manager);
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var model = this.vodpointsdb.managers.Find(id);

            if (model == null)
            {
                return HttpNotFound();
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(manager manager)
        {
            if (ModelState.IsValid)
            {
                this.vodpointsdb.Entry(manager).State = EntityState.Modified;
                this.vodpointsdb.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            var managerToDelte = this.vodpointsdb.managers.Find(id);
            this.vodpointsdb.managers.Remove(managerToDelte);
            this.vodpointsdb.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
