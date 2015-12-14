using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using vodpoints.edmx;

namespace vodpoints.Models
{
	public class CompositeAuthorityViewModel
	{
		public CompositeAuthorityViewModel()
		{
			Managers = new List<manager>();
			AccessControlParent = new List<accesscontrolparent>();
			AccessControlChildren = new List<accesscontrolchildren>();
		}
		public List<manager> Managers { get; set; }
		public List<accesscontrolparent> AccessControlParent { get; set; }
		public List<accesscontrolchildren> AccessControlChildren { get; set; }
		public managerauthoritygroup ManagerAuthorityGroup { get; set; }

	}
}
