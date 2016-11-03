using System.Linq;
using SP_Common_Classes.Models;
using SP_Common_Classes.Models.DB;
using SP_API.Repository;
using System.Collections.Generic;

namespace SP_API.Repository
{
    public class vPersonRepository : IvPersonRepository
    {
        //static List<vPerson> vPersonList = new List<vPerson>();
        private readonly ApplicationDbContext _context;
        public vPersonRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        //public void Add(vPerson item)
        //{
        //    vPersonList.Add(item);
        //}

        public vPerson Find(int key)
        {
            return _context.vPerson
                .Where(e => e.PersonId == key)
                .SingleOrDefault();
        }

        public IEnumerable<vPerson> GetAll()
        {
            return _context.vPerson.AsEnumerable();
        }

        public IEnumerable<vPerson> GetbyFamilyId(int key)
        {
            return _context.vPerson.Where(e => e.FamilyId == key).AsEnumerable();
        }

        //public void Remove(string Id)
        //{
        //    var itemToRemove = vPersonList.SingleOrDefault(r => r.MobilePhone == Id);
        //    if (itemToRemove != null)
        //        vPersonList.Remove(itemToRemove);
        //}

        //public void Update(vPerson item)
        //{
        //    var itemToUpdate = vPersonList.SingleOrDefault(r => r.MobilePhone == item.MobilePhone);
        //    if (itemToUpdate != null)
        //    {
        //        itemToUpdate.FirstName = item.FirstName;
        //        itemToUpdate.LastName = item.LastName;
        //        itemToUpdate.IsFamilyMember = item.IsFamilyMember;
        //        itemToUpdate.Company = item.Company;
        //        itemToUpdate.JobTitle = item.JobTitle;
        //        itemToUpdate.Email = item.Email;
        //        itemToUpdate.MobilePhone = item.MobilePhone;
        //        itemToUpdate.DateOfBirth = item.DateOfBirth;
        //        itemToUpdate.AnniversaryDate = item.AnniversaryDate;
        //    }
        //}
    }
}
