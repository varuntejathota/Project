using InsurancePolicySystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsurancePolicySystem.Controllers
{
    public class LoginCustomerController : Controller
    {
        Training_12Dec18_BangaloreEntities pes = new Training_12Dec18_BangaloreEntities();
        // GET: LoginCustomer
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LoginCust()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginCust(LoginDetail user)
        {
            List<LoginDetail> userlist = pes.LoginDetails.ToList();

            List<LoginDetail> LoginCust = userlist.Where(u => u.loginId == user.loginId
            && u.loginPassword == user.loginPassword).ToList();

            if (LoginCust.Count == 1)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                TempData["Message"] = "Invalid Credentials";
                ModelState.Clear();
                return View();

            }

        }
        //public ActionResult LogoutUser()
        //{
        //    Session["userType"] = null;
        //    Session["userName"] = null;
        //    return RedirectToAction("Home", "Home");
        //}
    }
}

    
