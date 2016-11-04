using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;

// For more information on enabling Web API for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace SP_Reports.Controllers
{
    [Authorize]
    public class vScheduleDetailsAPI : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
