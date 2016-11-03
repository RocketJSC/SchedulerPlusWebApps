using System;
using SP_Common_Classes.Models.DB;
using System.Collections.Generic;

namespace SP_API.Repository
{
    public interface IvScheduleDetailRepository
    {
        //void Add(vPerson item);
        IEnumerable<vScheduleDetail> GetAll();
        IEnumerable<vScheduleDetail> GetbyFamilyId(int key);
        IEnumerable<vScheduleDetail> GetbyScheduleMasterId(int key);
        vScheduleDetail Find(int key);
        //void Remove(string Id);
        //void Update(vPerson item);
    }
}

