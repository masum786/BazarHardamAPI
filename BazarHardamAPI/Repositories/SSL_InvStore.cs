//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BazarHardamAPI.Repositories
{
    using System;
    using System.Collections.Generic;
    
    public partial class SSL_InvStore
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public System.Guid CreateUser { get; set; }
        public System.DateTime CreateDate { get; set; }
        public Nullable<System.Guid> EditUser { get; set; }
        public Nullable<System.DateTime> EditDate { get; set; }
        public string OCode { get; set; }
    }
}
