//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace vodpoints.edmx
{
    using System;
    using System.Collections.Generic;
    
    public partial class accesscontrolchildren
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public long ParentId { get; set; }
    
        public virtual accesscontrolparent accesscontrolparent { get; set; }
    }
}
