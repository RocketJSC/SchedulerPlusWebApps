using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SP_Common_Classes.Models.DB;

namespace SP_Reports.Controllers
{
    public class vLastAttendedReportsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vLastAttendedReportsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vLastAttendedReports
        public async Task<IActionResult> Index(string selectVisitor = "", string selectClass = "", string selectPaidStaff = "", string selectActive = "", string selectFamilyPosition="")
        {
            var result = from vLastAttendedReport in _context.vLastAttendedReport
                             //orderby vAttendanceReport.DateAttended, vAttendanceReport.TimeAttended, vAttendanceReport.ClassAttended, vAttendanceReport.LastName
                         select vLastAttendedReport;
            ViewBag.Title = "";
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor.Equals(selectVisitor));
                if (selectVisitor.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Visitors)"; }
            }
            if (selectPaidStaff.Trim() != "")
            {
                result = result.Where(m => m.Person_PaidStaff.Equals(selectPaidStaff));
                if (selectPaidStaff.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Paid Staff)"; }
            }
            if (selectActive.Trim() != "")
            {
                result = result.Where(m => m.Person_Active.Equals(selectActive));
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
            if (selectFamilyPosition.Trim() != "")
            {
                if (selectFamilyPosition.Substring(0,1) == "!")
                {
                    result = result.Where(m => !m.FamilyPosition.Equals(selectFamilyPosition.Substring(1)));
                }
                else
                {
                    result = result.Where(m => m.FamilyPosition.Equals(selectFamilyPosition));
                }
                if (selectFamilyPosition.Trim() == "3") { ViewBag.Title = ViewBag.Title + " (Children)"; }
                else { ViewBag.Title = ViewBag.Title + " (Adults)"; }
            }
            result = result.OrderBy(o => o.DateAttended).ThenBy(o => o.ClassAttended).ThenBy(o => o.Person_LastName);
            var results = result.ToListAsync();
            return View(await results);
        }

        // GET: vLastAttendedReports/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vLastAttendedReport = await _context.vLastAttendedReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vLastAttendedReport == null)
            {
                return NotFound();
            }

            return View(vLastAttendedReport);
        }

        // GET: vLastAttendedReports/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vLastAttendedReports/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("AttendanceDtlId,AttendanceClass,AttendanceHdrId,CalcFirstName,ClassAttended,DateAttended,FamilyPosition,Note,PersonId,Person_Class,Person_LastName,Person_Visitor,Visitor")] vLastAttendedReport vLastAttendedReport)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vLastAttendedReport);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vLastAttendedReport);
        }

        // GET: vLastAttendedReports/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vLastAttendedReport = await _context.vLastAttendedReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vLastAttendedReport == null)
            {
                return NotFound();
            }
            return View(vLastAttendedReport);
        }

        // POST: vLastAttendedReports/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("AttendanceDtlId,AttendanceClass,AttendanceHdrId,CalcFirstName,ClassAttended,DateAttended,FamilyPosition,Note,PersonId,Person_Class,Person_LastName,Person_Visitor,Visitor")] vLastAttendedReport vLastAttendedReport)
        {
            if (id != vLastAttendedReport.AttendanceDtlId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vLastAttendedReport);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vLastAttendedReportExists(vLastAttendedReport.AttendanceDtlId))
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
            return View(vLastAttendedReport);
        }

        // GET: vLastAttendedReports/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vLastAttendedReport = await _context.vLastAttendedReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vLastAttendedReport == null)
            {
                return NotFound();
            }

            return View(vLastAttendedReport);
        }

        // POST: vLastAttendedReports/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vLastAttendedReport = await _context.vLastAttendedReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            _context.vLastAttendedReport.Remove(vLastAttendedReport);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vLastAttendedReportExists(int id)
        {
            return _context.vLastAttendedReport.Any(e => e.AttendanceDtlId == id);
        }
    }
}
