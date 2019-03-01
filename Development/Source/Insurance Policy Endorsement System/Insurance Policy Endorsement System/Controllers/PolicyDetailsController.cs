using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Insurance_Policy_Endorsement_System.Models;

namespace Insurance_Policy_Endorsement_System.Controllers
{
    public class PolicyDetailsController : Controller
    {
        private Training_12Dec18_BangaloreEntities db = new Training_12Dec18_BangaloreEntities();

        // GET: PolicyDetails
        public ActionResult Index()
        {
            var policyDetails = db.PolicyDetails.Include(p => p.Customer).Include(p => p.product);
            return View(policyDetails.ToList());
        }

        // GET: PolicyDetails/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PolicyDetail policyDetail = db.PolicyDetails.Find(id);
            if (policyDetail == null)
            {
                return HttpNotFound();
            }
            return View(policyDetail);
        }

        // GET: PolicyDetails/Create
        public ActionResult Create()
        {
            ViewBag.CustomerId = new SelectList(db.Customers, "CustomerId", "CustomerName");
            ViewBag.ProductId = new SelectList(db.products, "ProductId", "ProductName");
            return View();
        }

        // POST: PolicyDetails/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PolicyNumber,CustomerId,ProductId")] PolicyDetail policyDetail)
        {
            if (ModelState.IsValid)
            {
                db.PolicyDetails.Add(policyDetail);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CustomerId = new SelectList(db.Customers, "CustomerId", "CustomerName", policyDetail.CustomerId);
            ViewBag.ProductId = new SelectList(db.products, "ProductId", "ProductName", policyDetail.ProductId);
            return View(policyDetail);
        }

        // GET: PolicyDetails/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PolicyDetail policyDetail = db.PolicyDetails.Find(id);
            if (policyDetail == null)
            {
                return HttpNotFound();
            }
            ViewBag.CustomerId = new SelectList(db.Customers, "CustomerId", "CustomerName", policyDetail.CustomerId);
            ViewBag.ProductId = new SelectList(db.products, "ProductId", "ProductName", policyDetail.ProductId);
            return View(policyDetail);
        }

        // POST: PolicyDetails/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PolicyNumber,CustomerId,ProductId")] PolicyDetail policyDetail)
        {
            if (ModelState.IsValid)
            {
                db.Entry(policyDetail).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CustomerId = new SelectList(db.Customers, "CustomerId", "CustomerName", policyDetail.CustomerId);
            ViewBag.ProductId = new SelectList(db.products, "ProductId", "ProductName", policyDetail.ProductId);
            return View(policyDetail);
        }

        // GET: PolicyDetails/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PolicyDetail policyDetail = db.PolicyDetails.Find(id);
            if (policyDetail == null)
            {
                return HttpNotFound();
            }
            return View(policyDetail);
        }

        // POST: PolicyDetails/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PolicyDetail policyDetail = db.PolicyDetails.Find(id);
            db.PolicyDetails.Remove(policyDetail);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
