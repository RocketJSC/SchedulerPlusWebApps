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
    public class vVisitorAttendancesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public vVisitorAttendancesController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: vVisitorAttendances

        public async Task<IActionResult> Index()
        {
            var result = from vVisitorAttendance in _context.vVisitorAttendance
                         orderby vVisitorAttendance.DateAttended, vVisitorAttendance.TimeAttended, vVisitorAttendance.ClassAttended, vVisitorAttendance.Person_LastName
                         select vVisitorAttendance;
            var results = result.ToListAsync();
            //return View(await _context.vVisitorAttendance.ToListAsync());
            return View(await results);
        }

        // GET: vVisitorAttendances/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vVisitorAttendance = await _context.vVisitorAttendance.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vVisitorAttendance == null)
            {
                return NotFound();
            }

            return View(vVisitorAttendance);
        }

        // GET: vVisitorAttendances/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: vVisitorAttendances/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("AttendanceDtlId,AttendanceHdrId,AttendedVisitor,CalcFirstName,ClassAttended,ClassAttendedDesc,DateAttended,FamilyPosition,LastName,PaidStaff,Parent1CalcFirstName,Parent1LastName,Parent1MobileNbr,Parent2CalcFirstName,Parent2LastName,Parent2MobileNbr,PersonVisitor,TimeAttended")] vVisitorAttendance vVisitorAttendance)
        {
            if (ModelState.IsValid)
            {
                _context.Add(vVisitorAttendance);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(vVisitorAttendance);
        }

        // GET: vVisitorAttendances/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vVisitorAttendance = await _context.vVisitorAttendance.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vVisitorAttendance == null)
            {
                return NotFound();
            }
            return View(vVisitorAttendance);
        }

        // POST: vVisitorAttendances/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("AttendanceDtlId,AttendanceHdrId,AttendedVisitor,CalcFirstName,ClassAttended,ClassAttendedDesc,DateAttended,FamilyPosition,LastName,PaidStaff,Parent1CalcFirstName,Parent1LastName,Parent1MobileNbr,Parent2CalcFirstName,Parent2LastName,Parent2MobileNbr,PersonVisitor,TimeAttended")] vVisitorAttendance vVisitorAttendance)
        {
            if (id != vVisitorAttendance.AttendanceDtlId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vVisitorAttendance);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!vVisitorAttendanceExists(vVisitorAttendance.AttendanceDtlId))
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
            return View(vVisitorAttendance);
        }

        // GET: vVisitorAttendances/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vVisitorAttendance = await _context.vVisitorAttendance.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            if (vVisitorAttendance == null)
            {
                return NotFound();
            }

            return View(vVisitorAttendance);
        }

        // POST: vVisitorAttendances/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vVisitorAttendance = await _context.vVisitorAttendance.SingleOrDefaultAsync(m => m.AttendanceDtlId == id);
            _context.vVisitorAttendance.Remove(vVisitorAttendance);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        private bool vVisitorAttendanceExists(int id)
        {
            return _context.vVisitorAttendance.Any(e => e.AttendanceDtlId == id);
        }
    }
}
