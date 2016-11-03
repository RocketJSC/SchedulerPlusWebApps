using SP_Common_Classes.Models.DB;
using SP_API.Repository;
using Microsoft.AspNetCore.Mvc;

using System.Collections.Generic;

namespace SP_API.Controllers
{
    [Route("api/[controller]")]
    public class vPersonController : Controller
    {
        public IvPersonRepository vPersonRepo { get; set; }

        public vPersonController(IvPersonRepository _repo)
        {
            vPersonRepo = _repo;
        }

        [HttpGet]
        public IEnumerable<vPerson> GetAll()
        {
            return vPersonRepo.GetAll();
        }

        [Route("[action]/{id:int}")]
        //[HttpGet("{id}", Name = "GetvPerson")]
        public IActionResult GetById(int id)
        {
            var item = vPersonRepo.Find(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(new ObjectResult(item));
        }

        [Route("[action]/{id:int}")]
        //[HttpGet("{id}", Name = "GetvPerson")]
        public IEnumerable<vPerson> GetByFamily(int id)
        {
            return vPersonRepo.GetbyFamilyId(id);
        }

        //[HttpPost]
        //public IActionResult Create([FromBody] vPerson item)
        //{
        //    if (item == null)
        //    {
        //        return BadRequest();
        //    }
        //    vPersonRepo.Add(item);
        //    return CreatedAtRoute("GetvPerson", new { Controller = "vPerson", id = item.MobilePhone }, item);
        //}

        //[HttpPut("{id}")]
        //public IActionResult Update(string id, [FromBody] vPerson item)
        //{
        //    if (item == null)
        //    {
        //        return BadRequest();
        //    }
        //    var contactObj = vPersonRepo.Find(id);
        //    if (contactObj == null)
        //    {
        //        return NotFound();
        //    }
        //    vPersonRepo.Update(item);
        //    return new NoContentResult();
        //}

        //[HttpDelete("{id}")]
        //public void Delete(string id)
        //{
        //    vPersonRepo.Remove(id);
        //}
    }
}
