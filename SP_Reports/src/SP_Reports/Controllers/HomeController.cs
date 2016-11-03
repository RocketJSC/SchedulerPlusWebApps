using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SP_Common_Classes.Models.DB;

namespace SP_Reports.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            //var result = (from vAttendanceReport in _context.vAttendanceReport
            //              orderby vAttendanceReport.DateAttended descending
            //              select vAttendanceReport).GroupBy(x => x.DateAttended).Select(x => x.First());
            //var results = result.Take(5).ToListAsync();
            var result = (from vAttendanceReportDate in _context.vAttendanceReportDate
            //              select new vpartAttendanceReports { DateAttended = vAttendanceReport.DateAttended }).Distinct().OrderByDescending(n => n).Take(5).ToListAsync();
                        select vAttendanceReportDate).OrderByDescending(n => n.DateAttended).Take(5).ToListAsync();
            return View(await result);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
