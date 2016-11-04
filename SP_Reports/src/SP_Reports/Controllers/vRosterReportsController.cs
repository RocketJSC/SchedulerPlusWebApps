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
    public class vRosterReportsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vRosterReportsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vRosterReports
        public async Task<IActionResult> Index(string selectVisitor = "", string selectClass = "", string selectActive = "")
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
            var result = from vRosterReport in _context.vRosterReport
                             //orderby vRosterReport.CalcFistName, vRosterReport.LastName
                         select vRosterReport;
            if (selectClass.Trim() != "")
            {
                result = result.Where(m => m.PersonClass == selectClass);
            }
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor == selectVisitor);
            }
            if (selectActive.Trim() != "")
            {
                result = result.Where(m => m.Active == selectActive);
            }
            result = result.OrderBy(o => o.CalcFirstName).ThenBy(o => o.LastName).ThenBy(o => o.ClassAttended);
            var results = result.ToListAsync();
            if (selectClass.Trim() != "")
            {
                ViewBag.Title = " for " + result2 + " Room";
            }
            else
            {
                ViewBag.Title = " for All Rooms";
            }
            if (selectVisitor.Trim() != "")
            {
                if (selectVisitor.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Visitors)"; }
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

        // GET: vRosterReports/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vRosterReport = await _context.vRosterReport.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vRosterReport == null)
            {
                return NotFound();
            }

            return View(vRosterReport);
        }

        // GET: vRosterReports/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vRosterReports/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PersonId,Active,BirthDate,CalcFistName,ClassAttended,FamilyPosition,Family_Note1,LastName,Note1,Note2,PaidStaff,Parent1FirstName,Parent1LastName,Parent1MobileNbr,Parent2FirstName,Parent2LastName,Parent2MobileNbr,PersonClass,PottyTraining,RosterNotes,RosterReview,SpecialHandling,SpecialHandlingNote,Visitor")] vRosterReport vRosterReport)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vRosterReport);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vRosterReport);
        }

        // GET: vRosterReports/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vRosterReport = await _context.vRosterReport.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vRosterReport == null)
            {
                return NotFound();
            }
            return View(vRosterReport);
        }

        // POST: vRosterReports/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PersonId,Active,BirthDate,CalcFistName,ClassAttended,FamilyPosition,Family_Note1,LastName,Note1,Note2,PaidStaff,Parent1FirstName,Parent1LastName,Parent1MobileNbr,Parent2FirstName,Parent2LastName,Parent2MobileNbr,PersonClass,PottyTraining,RosterNotes,RosterReview,SpecialHandling,SpecialHandlingNote,Visitor")] vRosterReport vRosterReport)
        {
            if (id != vRosterReport.PersonId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vRosterReport);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vRosterReportExists(vRosterReport.PersonId))
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
            return View(vRosterReport);
        }

        // GET: vRosterReports/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vRosterReport = await _context.vRosterReport.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vRosterReport == null)
            {
                return NotFound();
            }

            return View(vRosterReport);
        }

        // POST: vRosterReports/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vRosterReport = await _context.vRosterReport.SingleOrDefaultAsync(m => m.PersonId == id);
            _context.vRosterReport.Remove(vRosterReport);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vRosterReportExists(int id)
        {
            return _context.vRosterReport.Any(e => e.PersonId == id);
        }
    }
}
