using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Insurance_Policy_Endorsement_System.Models;

namespace Insurance_Policy_Endorsement_System.Models
{
    public class Policy
    {
        public  Customer cust { get; set; }
        public PolicyDetail pol { get; set; }
        public Document doc { get; set; }
        public product prod { get; set; }
        public Nominee nom { get; set; }
        public Endorsement endorse { get; set; }

    }
}