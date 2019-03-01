using System.Web;
using System.Web.Mvc;

namespace Insurance_Policy_Endorsement_System
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
