using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace SP_Common_Classes.Models.DB
{
    public partial class Person
    {
        [Key]
        public int PersonId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string GoesByName { get; set; }
        public int FamilyId { get; set; }
        public string EmailAddress { get; set; }
        public string PhoneNumber1 { get; set; }
        public string PhoneType1 { get; set; }
        public string PhoneNumber2 { get; set; }
        public string PhoneType2 { get; set; }
        public string PhoneNumber3 { get; set; }
        public string PhoneType3 { get; set; }
        public string MobileProvider { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string Address3 { get; set; }
        public string City { get; set; }
        public string StateProvince { get; set; }
        public string ZipPostalCode { get; set; }
        public string CountryCode { get; set; }
        public string County { get; set; }
        public string FamilyPosition { get; set; }
        public DateTime BirthDate { get; set; }
        public string Class { get; set; }
        public string Title { get; set; }
        public string PrimaryContactMethod { get; set; }
        public string TextAllowed { get; set; }
        public string Note1 { get; set; }
        public string Note2 { get; set; }
        public string FollowupInd { get; set; }
        public string FollowupNote { get; set; }
        public string Active { get; set; }
        public string PaidStaff { get; set; }
        public string WebAccessAllowed { get; set; }
        public string WebLogonName { get; set; }
        public string WebPassword { get; set; }
        public DateTime DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public string Schedule { get; set; }
        public string Suffix { get; set; }
        public string RosterNotes { get; set; }
        public string RosterReview { get; set; }
        public string PottyTraining { get; set; }
        public string Visitor { get; set; }
    }
}
