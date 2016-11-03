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
    public class vPersonsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vPersonsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vPersons
        public async Task<IActionResult> Index(string selectVisitor = "", string selectPaidStaff = "", string selectActive = "", int selectPersonId = 0, int selectFamilyId = 0, string selectFamilyPosition = "")
        {
            var result = from vPerson in _context.vPerson
                             //orderby vAttendanceReport.DateAttended, vAttendanceReport.TimeAttended, vAttendanceReport.ClassAttended, vAttendanceReport.LastName
                         select vPerson;
            ViewBag.Title = "";
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor.Equals(selectVisitor));
                if (selectVisitor.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Visitors)"; }
            }
            if (selectPaidStaff.Trim() != "")
            {
                result = result.Where(m => m.PaidStaff == selectPaidStaff);
                if (selectPaidStaff.Trim() == "1")
                { ViewBag.Title = ViewBag.Title + " (Paid Staff)"; }
            }
            if (selectActive.Trim() != "")
            {
                result = result.Where(m => m.Active.Equals(selectActive));
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
                if (selectFamilyPosition.Substring(0, 1) == "!")
                {
                    result = result.Where(m => !m.FamilyPosition.Equals(selectFamilyPosition.Substring(1)));
                    ViewBag.Title = ViewBag.Title + " (Adults)";
                }
                else
                {
                    result = result.Where(m => m.FamilyPosition.Equals(selectFamilyPosition));
                    ViewBag.Title = ViewBag.Title + " (Children)";
                }
            }
            if (selectFamilyId != 0)
            {
                result = result.Where(m => m.FamilyId == selectFamilyId);
                var result3 = (from vFamilyReport in _context.vFamilyReport
                               where vFamilyReport.FamilyId == selectFamilyId
                               select vFamilyReport).Single().LastName;
                ViewBag.Title = ViewBag.Title + " (" + result3 + " Family)";
            }
            if (selectPersonId != 0)
            {
                result = result.Where(m => m.PersonId == selectPersonId);
                var result4 = (from vPerson in _context.vPerson
                               where vPerson.PersonId == selectPersonId
                               select vPerson).Select(v => new { contact = v.CalcFirstName + " " + v.LastName }).Single().contact;
                ViewBag.Title = ViewBag.Title + " (" + result4 + ")";
            }
            result = result.OrderBy(o => o.LastName);
            var results = result.ToListAsync();
            return View(await results);
        }
        public async Task<IActionResult> PartialIndex(string selectVisitor = "", string selectPaidStaff = "", string selectActive = "", int selectPersonId = 0, int selectFamilyId = 0, string selectFamilyPosition = "")
        {
            var result = from vPerson in _context.vPerson
                             //orderby vAttendanceReport.DateAttended, vAttendanceReport.TimeAttended, vAttendanceReport.ClassAttended, vAttendanceReport.LastName
                         select vPerson;
            if (selectVisitor.Trim() != "")
            {
                result = result.Where(m => m.Visitor.Equals(selectVisitor));
            }
            if (selectPaidStaff.Trim() != "")
            {
                result = result.Where(m => m.PaidStaff == selectPaidStaff);
            }
            if (selectActive.Trim() != "")
            {
                result = result.Where(m => m.Active.Equals(selectActive));
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
                if (selectFamilyPosition.Substring(0, 1) == "!")
                {
                    result = result.Where(m => !m.FamilyPosition.Equals(selectFamilyPosition.Substring(1)));
                }
                else
                {
                    result = result.Where(m => m.FamilyPosition.Equals(selectFamilyPosition));
                }
            }
            if (selectFamilyId != 0)
            {
                result = result.Where(m => m.FamilyId == selectFamilyId);
            }
            if (selectPersonId != 0)
            {
                result = result.Where(m => m.PersonId == selectPersonId);
            }
            result = result.OrderBy(o => o.LastName);
            var results = result.ToListAsync();
            return PartialView(await results);
        }

        // GET: vPersons/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vPerson = await _context.vPerson.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vPerson == null)
            {
                return NotFound();
            }

            return View(vPerson);
        }

        // GET: vPersons/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vPersons/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PersonId,Active,Address1,Address2,Address3,BirthDate,CalcFirstName,City,Class,CountryCode,County,DateAdded,DateLastActivity,EmailAddress,FamilyId,FamilyPosition,FirstName,FollowupInd,FollowupNote,GoesByName,LastName,MobileProvider,Note1,Note2,PaidStaff,PhoneNumber1,PhoneNumber2,PhoneNumber3,PhoneType1,PhoneType2,PhoneType3,PottyTraining,PrimaryContactMethod,RosterNotes,RosterReview,Schedule,StateProvince,Suffix,TextAllowed,Title,Visitor,WebAccessAllowed,WebLogonName,WebPassword,ZipPostalCode")] vPerson vPerson)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vPerson);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vPerson);
        }

        // GET: vPersons/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vPerson = await _context.vPerson.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vPerson == null)
            {
                return NotFound();
            }
            return View(vPerson);
        }

        // POST: vPersons/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PersonId,Active,Address1,Address2,Address3,BirthDate,CalcFirstName,City,Class,CountryCode,County,DateAdded,DateLastActivity,EmailAddress,FamilyId,FamilyPosition,FirstName,FollowupInd,FollowupNote,GoesByName,LastName,MobileProvider,Note1,Note2,PaidStaff,PhoneNumber1,PhoneNumber2,PhoneNumber3,PhoneType1,PhoneType2,PhoneType3,PottyTraining,PrimaryContactMethod,RosterNotes,RosterReview,Schedule,StateProvince,Suffix,TextAllowed,Title,Visitor,WebAccessAllowed,WebLogonName,WebPassword,ZipPostalCode")] vPerson vPerson)
        {
            if (id != vPerson.PersonId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vPerson);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vPersonExists(vPerson.PersonId))
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
            return View(vPerson);
        }

        // GET: vPersons/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vPerson = await _context.vPerson.SingleOrDefaultAsync(m => m.PersonId == id);
            if (vPerson == null)
            {
                return NotFound();
            }

            return View(vPerson);
        }

        // POST: vPersons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vPerson = await _context.vPerson.SingleOrDefaultAsync(m => m.PersonId == id);
            _context.vPerson.Remove(vPerson);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vPersonExists(int id)
        {
            return _context.vPerson.Any(e => e.PersonId == id);
        }
    }
}
