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
    public class vAttendanceReportsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vAttendanceReportsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vAttendanceReports
        public async Task<IActionResult> Index(string selectVisitor = "" , string selectClass = "", string selectPaidStaff = "", int selectFamilyId = 0, int selectPersonId = 0, DateTime? selectDateAttended = null)
        {
            var result2 = "";
            if (selectClass.Trim() != "")
            {
                result2 = (from Value in _context.Value
                           where Value.Language_Id == 0 && Value.DomainId == 115124 && Value.Code_Value.Contains(selectClass)
                           select Value).Single().Code_Label;
                if (result2 == null)
                {
                    result2 = selectClass;
                }
                else { }
            }
            else { }
            var result = from vAttendanceReport in _context.vAttendanceReport
                         //orderby vAttendanceReport.DateAttended, vAttendanceReport.TimeAttended, vAttendanceReport.ClassAttended, vAttendanceReport.LastName
                         select vAttendanceReport;
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor.Equals(selectVisitor));
            }
            if (selectClass.Trim() != "")
            {
                result = result.Where(m => m.Class == selectClass);
            }
            if (selectPaidStaff.Trim() != "")
            {
                result = result.Where(m => m.PaidStaff == selectPaidStaff);
            }
            if (selectFamilyId != 0)
            {
                result = result.Where(m => m.FamilyId == selectFamilyId);
            }
            if (selectPersonId != 0)
            {
                result = result.Where(m => m.PersonId == selectPersonId);
            }
            if (selectDateAttended.HasValue)
            {
                result = result.Where(m => m.DateAttended == selectDateAttended);
            }
            result = result.OrderBy(o => o.DateAttended).ThenBy(o=>o.TimeAttended).ThenBy(o=>o.ClassAttended).ThenBy(o=>o.LastName);
            var results = result.ToListAsync();
            if (selectVisitor == "1")
            {
                ViewBag.Title = " - Visitors";
                if (selectClass.Trim() != "")
                {
                    //ViewBag.Title = ViewBag.Title + " for " + selectClass;
                    ViewBag.Title = ViewBag.Title + " for " + result2;
                }
                else
                {
                    ViewBag.Title = ViewBag.Title + " for All Rooms";
                }
            }
            else
            {
                if (selectPaidStaff == "1")
                {
                    ViewBag.Title = " - Paid Staff";
                    if (selectClass.Trim() != "")
                    {
                        ViewBag.Title = ViewBag.Title + " for " + result2;
                    }
                    else
                    {
                        ViewBag.Title = ViewBag.Title + " for All Rooms";
                    }
                }
                else
                {
                    if (selectClass.Trim() != "")
                    {
                        ViewBag.Title = " - for " + result2;
                    }
                    else
                    {
                        if (selectDateAttended.HasValue)
                        {
                            ViewBag.Title = " - for Date " + selectDateAttended.ToString().Split(' ')[0];
                        }
                        else
                        {
                            ViewBag.Title = " for All Rooms";
                        }
                    }
                }
            }
            if (selectFamilyId != 0)
            {
                var result3 = (from vFamilyReport in _context.vFamilyReport
                           where vFamilyReport.FamilyId == selectFamilyId
                           select vFamilyReport).Single().LastName;
                ViewBag.Title = ViewBag.Title + " (" + result3 + " Family)";
            }
            if (selectPersonId != 0)
            {
                var result4 = (from vPerson in _context.vPerson
                               where vPerson.PersonId == selectPersonId
                               select vPerson).Select(v => new { contact = v.CalcFirstName + " " + v.LastName }).Single().contact;
                ViewBag.Title = ViewBag.Title + " (" + result4 + ")";
            }
            //ViewBag.Title = "Visitors for " + selectClass;
            //return View(await _context.vAttendanceReport.ToListAsync());
            return View(await results);
        }

        // GET: vAttendanceReports/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vAttendanceReport = await _context.vAttendanceReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vAttendanceReport == null)
            {
                return NotFound();
            }

            return View(vAttendanceReport);
        }

        // GET: vAttendanceReports/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vAttendanceReports/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("AttendanceDtlId,Active,AttendanceHdrId,CalcFirstName,Class,ClassAttended,DateAttended,FamilyPosition,LastName,PaidStaff,Parent1FirstName,Parent1LastName,Parent1MobileNumber,Parent2FirstName,Parent2LastName,Parent2MobileNumber,PersonClass,PersonVisitor,TimeAttended,Visitor")] vAttendanceReport vAttendanceReport)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vAttendanceReport);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vAttendanceReport);
        }

        // GET: vAttendanceReports/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vAttendanceReport = await _context.vAttendanceReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vAttendanceReport == null)
            {
                return NotFound();
            }
            return View(vAttendanceReport);
        }

        // POST: vAttendanceReports/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("AttendanceDtlId,Active,AttendanceHdrId,CalcFirstName,Class,ClassAttended,DateAttended,FamilyPosition,LastName,PaidStaff,Parent1FirstName,Parent1LastName,Parent1MobileNumber,Parent2FirstName,Parent2LastName,Parent2MobileNumber,PersonClass,PersonVisitor,TimeAttended,Visitor")] vAttendanceReport vAttendanceReport)
        {
            if (id != vAttendanceReport.AttendanceDtlId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vAttendanceReport);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vAttendanceReportExists(vAttendanceReport.AttendanceDtlId))
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
            return View(vAttendanceReport);
        }

        // GET: vAttendanceReports/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vAttendanceReport = await _context.vAttendanceReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vAttendanceReport == null)
            {
                return NotFound();
            }

            return View(vAttendanceReport);
        }

        // POST: vAttendanceReports/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vAttendanceReport = await _context.vAttendanceReport.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            _context.vAttendanceReport.Remove(vAttendanceReport);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vAttendanceReportExists(int id)
        {
            return _context.vAttendanceReport.Any(e => e.AttendanceDtlId == id);
        }
    }
}
