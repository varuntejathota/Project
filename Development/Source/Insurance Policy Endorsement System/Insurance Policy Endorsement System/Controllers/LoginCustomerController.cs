using Insurance_Policy_Endorsement_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Insurance_Policy_Endorsement_System.Controllers
{
    public class LoginCustomerController : Controller
    {
        Training_12Dec18_BangaloreEntities pes = new Training_12Dec18_BangaloreEntities();
        // GET: LoginCustomer
        public ActionResult Index()
        {
            return View();
        }
            //[HttpPost]
            //public ActionResult RedirectToRegister(Customer cust)
            //{
            //    if (cust.CustomerId.Equals("UserSeller"))
            //    {
            //        return RedirectToAction("RegisterSeller", "Register");
            //    }
            //    else if (cust.CustomerId.Equals("UserBuyer"))
            //    {
            //        return RedirectToAction("RegisterBuyer", "Register");
            //    }
            //    return View();
            //}

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
                return RedirectToAction("Home", "Customers");
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


