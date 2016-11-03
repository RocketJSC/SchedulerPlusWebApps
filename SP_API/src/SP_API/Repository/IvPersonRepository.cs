using System;
using SP_Common_Classes.Models.DB;
using System.Collections.Generic;

namespace SP_API.Repository
{
    public interface IvPersonRepository
    {
        //void Add(vPerson item);
        IEnumerable<vPerson> GetAll();
        IEnumerable<vPerson> GetbyFamilyId(int key);
        vPerson Find(int key);
        //void Remove(string Id);
        //void Update(vPerson item);
    }
}
