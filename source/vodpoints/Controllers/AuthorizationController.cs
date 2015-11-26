using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace vodpoints.Controllers
{
    public class AuthorizationController : Controller
    {
        public ActionResult Manager()
        {
            return View();
        }

        public ActionResult Authority()
        {
            return View();
        }
	}
}