using System.Linq;
using SP_Common_Classes.Models;
using SP_Common_Classes.Models.DB;
using SP_API.Repository;
using System.Collections.Generic;
using System.Collections;

namespace SP_API.Repository
{
    public class vScheduleDetailRepository : IvScheduleDetailRepository
    {
        //static List<vScheduleDetail> vScheduleDetailList = new List<vScheduleDetail>();
        private readonly ApplicationDbContext _context;
        public vScheduleDetailRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public vScheduleDetail Find(int key)
        {
            return _context.vScheduleDetail
                .Where(e => e.ScheduleDetailId == key)
                .Where(e => e.Swapped != "1")
                .SingleOrDefault();
        }

        public IEnumerable<vScheduleDetail> GetAll()
        {
            return _context.vScheduleDetail.AsEnumerable();
        }

        public IEnumerable<vScheduleDetail> GetbyFamilyId(int key)
        {
            var result = from vScheduleDetail in _context.vScheduleDetail
                         select vScheduleDetail;
            result = result.Where(e => e.FamilyId == key);
            result = result.Where(e => e.Swapped != "1");
            result = result.OrderBy(e => e.Date).ThenBy(e => e.SeqNbr);
            var results = result.ToList();
            return results.AsEnumerable();
            //return _context.vScheduleDetail.Where(e => e.FamilyId == key).AsEnumerable();
        }

        public IEnumerable<vScheduleDetail> GetbyScheduleMasterId(int key)
        {
            var result = from vScheduleDetail in _context.vScheduleDetail
                         select vScheduleDetail;
            result = result.Where(e => e.ScheduleMasterId == key);
            result = result.Where(e => e.Swapped != "1");
            result = result.OrderBy(e => e.Date).ThenBy(e => e.SeqNbr);
            var results = result.ToList();
            return results.AsEnumerable();
            //return _context.vScheduleDetail.Where(e => e.ScheduleMasterId == key).AsEnumerable();
        }
    }
}

