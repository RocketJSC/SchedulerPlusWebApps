using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SP_Common_Classes.Models.DB;
using SP_Reports.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SP_Reports.ViewComponents
{
    public class PersonViewComponent : ViewComponent
    {
        private readonly ApplicationDbContext _context;

        public PersonViewComponent(ApplicationDbContext context)
        {
            _context = context;
        }

        public IViewComponentResult Invoke(string selectVisitor = "", string selectPaidStaff = "", string selectActive = "", int selectPersonId = 0, int selectFamilyId = 0, string selectFamilyPosition = "")
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
            var results = result.ToList();
            return View(results);
        }
    }
}
