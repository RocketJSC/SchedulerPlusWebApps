using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SP_Common_Classes.Models.DB;
using Microsoft.AspNetCore.Authorization;

namespace SP_Reports.Controllers
{
    [Authorize]
    public class vFamilyReportsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vFamilyReportsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vFamilyReports
        public async Task<IActionResult> Index(string selectVisitor="", string selectPaidStaff = "", string selectActive = "")
        {
            var result = from vFamilyReport in _context.vFamilyReport
                             //orderby vAttendanceReport.DateAttended, vAttendanceReport.TimeAttended, vAttendanceReport.ClassAttended, vAttendanceReport.LastName
                         select vFamilyReport   ;
            ViewBag.Title = "";
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor.Equals(selectVisitor));
            }
            if (selectPaidStaff.Trim() != "")
            {
                result = result.Where(m => m.Parent1_PaidStaff == selectPaidStaff || m.Parent2_PaidStaff == selectPaidStaff);
            }
            if (selectActive.Trim() != "")
            {
                result = result.Where(m => m.Active.Equals(selectActive));
            }
            result = result.OrderBy(o => o.LastName);
            var results = result.ToListAsync();
            if (selectVisitor.Trim() != "")
            {
                if (selectVisitor.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Visitors)"; }
            }
            if (selectPaidStaff.Trim() != "")
            {
                if (selectPaidStaff.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Paid Staff)"; }
            }
            if (selectActive.Trim() != "")
            {
                if (selectActive.Trim() == "0") { ViewBag.Title = ViewBag.Title + " (InActive)"; }
                else
                {
                    if (selectActive.Trim() == "1") { ViewBag.Title = ViewBag.Title + " (Active)"; }
                    else
                    {
                        if (selectActive.Trim() == "2") { ViewBag.Title = ViewBag.Title + " (Historical)"; }
                    }
                }
            }
            return View(await results);
        }

        // GET: vFamilyReports/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vFamilyReport = await _context.vFamilyReport.SingleOrDefaultAsync(m => m.FamilyId == id);
            if (vFamilyReport == null)
            {
                return NotFound();
            }

            return View(vFamilyReport);
        }

        // GET: vFamilyReports/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vFamilyReports/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("FamilyId,Active,LastName,Parent1_CalcFirstName,Parent1_PaidStaff,Parent1_PersonId,Parent2_CalcFirstName,Parent2_PaidStaff,Parent2_PersonId,Visitor")] vFamilyReport vFamilyReport)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vFamilyReport);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vFamilyReport);
        }

        // GET: vFamilyReports/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vFamilyReport = await _context.vFamilyReport.SingleOrDefaultAsync(m => m.FamilyId == id);
            if (vFamilyReport == null)
            {
                return NotFound();
            }
            return View(vFamilyReport);
        }

        // POST: vFamilyReports/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("FamilyId,Active,LastName,Parent1_CalcFirstName,Parent1_PaidStaff,Parent1_PersonId,Parent2_CalcFirstName,Parent2_PaidStaff,Parent2_PersonId,Visitor")] vFamilyReport vFamilyReport)
        {
            if (id != vFamilyReport.FamilyId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vFamilyReport);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vFamilyReportExists(vFamilyReport.FamilyId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Index");
            }
            return View(vFamilyReport);
        }

        // GET: vFamilyReports/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vFamilyReport = await _context.vFamilyReport.SingleOrDefaultAsync(m => m.FamilyId == id);
            if (vFamilyReport == null)
            {
                return NotFound();
            }

            return View(vFamilyReport);
        }

        // POST: vFamilyReports/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vFamilyReport = await _context.vFamilyReport.SingleOrDefaultAsync(m => m.FamilyId == id);
            _context.vFamilyReport.Remove(vFamilyReport);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vFamilyReportExists(int id)
        {
            return _context.vFamilyReport.Any(e => e.FamilyId == id);
        }
    }
}
