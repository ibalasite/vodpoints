using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using vodpoints.edmx;
using vodpoints.Models;

namespace vodpoints.Controllers
{
	public class AuthorityController : BaseController
	{
		[HttpGet]
		public ActionResult Index()
		{
			var models = this.vodpointsdb.authoritygroups.ToList();
			var dicAuthorityGroupUsers = new Dictionary<int, int>();
			foreach (var authorityGroup in models)
			{
				var countUsersInGroup = this.vodpointsdb.managerauthoritygroups.Where(a => a.AuthorityGroupId == authorityGroup.Id).Count();
				dicAuthorityGroupUsers.Add((int)authorityGroup.Id, countUsersInGroup);
			}

			ViewBag.DicAuthorityGroupUsers = dicAuthorityGroupUsers;
			return View(models);
		}

		[HttpGet]
		public ActionResult Delete(int id)
		{
			var authoritygroup = this.vodpointsdb.authoritygroups.Find(id);
			this.vodpointsdb.authoritygroups.Remove(authoritygroup);
			var managerAuthorityGroups = this.vodpointsdb.managerauthoritygroups.Where(a => a.AuthorityGroupId == id);
			this.vodpointsdb.managerauthoritygroups.RemoveRange(managerAuthorityGroups);
			this.vodpointsdb.SaveChanges();

			return RedirectToAction("Index");
		}

		[HttpGet]
		public ActionResult Create()
		{
			var managers = this.vodpointsdb.managers.ToList();
			var accesscontrolparents = this.vodpointsdb.accesscontrolparents.ToList();
			var accesscontrolchildren = this.vodpointsdb.accesscontrolchildrens.ToList();
			var model = new CompositeAuthorityViewModel();
			model.Managers = managers;
			model.AccessControlParent = accesscontrolparents;
			model.AccessControlChildren = accesscontrolchildren;
			return View(model);
		}

		[HttpPost]
		public ActionResult Create([Bind(Prefix = "authoritygroup")]authoritygroup authoritygroup, string[] managers, FormCollection collection)
		{
			using (var transaction = this.vodpointsdb.Database.BeginTransaction())
			{
				//// create new authoritygroup
				this.vodpointsdb.authoritygroups.Add(authoritygroup);
				this.vodpointsdb.SaveChanges();
				this.vodpointsdb.Entry(authoritygroup).GetDatabaseValues();
				var authorityGroupId = authoritygroup.Id;

				//// create data in managerauthoritygroup table
				foreach (var manager in managers)
				{
					var model = new managerauthoritygroup();
					model.AuthorityGroupId = authorityGroupId;
					model.ManagerId = this.vodpointsdb.managers.Where(a => a.Name == manager).First().Id;
					bool isExisted = this.vodpointsdb.managerauthoritygroups.Where(a => a.AuthorityGroupId == model.AuthorityGroupId && a.ManagerId == model.ManagerId).Any();

					if (!isExisted)
					{
						this.vodpointsdb.managerauthoritygroups.Add(model);
					}
				}

				//// create data in manageraccesscontrolchildren table
				foreach (var key in collection.AllKeys)
				{
					var accesscontrolchildrenId = 0;
					if (int.TryParse(key, out accesscontrolchildrenId) && collection[key] == "True")
					{
						foreach (var manager in managers)
						{
							var managerId = this.vodpointsdb.managers.Where(a => a.Name == manager).First().Id;
							bool isExisted = this.vodpointsdb.manageraccesscontrolchildrens.Where(a => a.AccessControlChildrenId == accesscontrolchildrenId && a.ManagerId == managerId).Any();

							if (!isExisted)
							{
								this.vodpointsdb.manageraccesscontrolchildrens.Add(new manageraccesscontrolchildren
								{
									AccessControlChildrenId = accesscontrolchildrenId,
									Function = 1,
									ManagerId = managerId
								});
							}
						}
					}
				}

				this.vodpointsdb.SaveChanges();
				transaction.Commit();
			}

			return RedirectToAction("Index");
		}
	}
}