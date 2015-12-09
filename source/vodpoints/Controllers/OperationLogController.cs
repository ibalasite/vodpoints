using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace vodpoints.Controllers
{
    public class OperationLogController : BaseController
    {
        [HttpGet]
        public ActionResult Index(string searchString, int? page, DateTime? searchDate)
        {
            var models = this.vodpointsdb.operationlogs.AsEnumerable();

            if (searchString != null)
            {
                page = 1;
            }

            if (!string.IsNullOrEmpty(searchString))
            {
                models = models.Where(a => a.ExecutedAction.Contains(searchString) || a.Module.Contains(searchString));
            }

            if (searchDate != null)
            {
                models = models.Where(a => a.CreateDate == searchDate);
            }

            int pageSize = 3;
            int pageNumber = (page ?? 1);
            models = models.OrderByDescending(a => a.CreateDate);

            return View(models.ToPagedList(pageNumber, pageSize));
        }
	}
}