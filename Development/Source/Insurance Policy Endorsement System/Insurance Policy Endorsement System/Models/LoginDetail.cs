//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Insurance_Policy_Endorsement_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LoginDetail
    {
        public Nullable<int> CustomerId { get; set; }
        public int loginId { get; set; }
        public string loginPassword { get; set; }
    
        public virtual Customer Customer { get; set; }
    }
}
