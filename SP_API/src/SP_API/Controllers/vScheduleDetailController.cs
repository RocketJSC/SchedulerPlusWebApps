using SP_Common_Classes.Models.DB;
using SP_API.Repository;
using Microsoft.AspNetCore.Mvc;

using System.Collections.Generic;
using System.Web.Http;

namespace SP_API.Controllers
{
    [Route("api/[controller]")]
    public class vScheduleDetailController : Controller
    {
        public IvScheduleDetailRepository vScheduleDetailRepo { get; set; }

        public vScheduleDetailController(IvScheduleDetailRepository _repo)
        {
            vScheduleDetailRepo = _repo;
        }

        [HttpGet]
        public IEnumerable<vScheduleDetail> GetAll()
        {
            return vScheduleDetailRepo.GetAll();
        }

        [Route("[action]/{id:int}")]
        //[HttpGet("{id}", Name = "GetvScheduleDetail")]
        public IActionResult GetById(int id)
        {
            var item = vScheduleDetailRepo.Find(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(new ObjectResult(item));
        }

        [Route("[action]/{id:int}")]
        //[HttpGet("{id}", Name = "GetvScheduleDetail")]
        public IEnumerable<vScheduleDetail> GetByFamily(int id)
        {
            return vScheduleDetailRepo.GetbyFamilyId(id);
        }

        [Route("[action]")]
        //[Route("[action]/{id:int}")]
        //[HttpGet("{id}", Name = "GetvScheduleDetail")]
        public IEnumerable<vScheduleDetail> GetByScheduleMaster([FromUri]int id)
        {
            return vScheduleDetailRepo.GetbyScheduleMasterId(id);
        }

        //[HttpPost]
        //public IActionResult Create([FromBody] vScheduleDetail item)
        //{
        //    if (item == null)
        //    {
        //        return BadRequest();
        //    }
        //    vScheduleDetailRepo.Add(item);
        //    return CreatedAtRoute("GetvScheduleDetail", new { Controller = "vScheduleDetail", id = item.MobilePhone }, item);
        //}

        //[HttpPut("{id}")]
        //public IActionResult Update(string id, [FromBody] vScheduleDetail item)
        //{
        //    if (item == null)
        //    {
        //        return BadRequest();
        //    }
        //    var contactObj = vScheduleDetailRepo.Find(id);
        //    if (contactObj == null)
        //    {
        //        return NotFound();
        //    }
        //    vScheduleDetailRepo.Update(item);
        //    return new NoContentResult();
        //}

        //[HttpDelete("{id}")]
        //public void Delete(string id)
        //{
        //    vScheduleDetailRepo.Remove(id);
        //}
    }
}

