using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using vodpoints.edmx;

namespace vodpoints.Controllers
{
    public class BaseController : Controller
    {
        public vodpointsdbEntities vodpointsdb = new vodpointsdbEntities();

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                this.vodpointsdb.Dispose();
            }

            base.Dispose(disposing);
        }
	}
}