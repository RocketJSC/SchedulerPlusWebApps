using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace SP_Common_Classes.Models.DB
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public class ApplicationUser : IdentityUser
        {
        }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
            builder.Entity<AttendanceDtl>()
                .HasKey(c => new { c.AttendanceDtlId });
            builder.Entity<AttendanceHdr>()
                .HasKey(c => new { c.AttendanceHdrId });
            builder.Entity<AuditTable>()
                .HasKey(c => new { c.AuditSeq });
            builder.Entity<AuditTransaction>()
                .HasKey(c => new { c.AuditSeq });
            builder.Entity<CommFormat1>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<CommFormat2>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<CommFormat3>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<ContactLog>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<Event>()                                                                                                        
                .HasKey(c => new { c.EventId });
            builder.Entity<EventFamilyPerson>()
                .HasKey(c => new { c.EventFamilyPersonId });
            builder.Entity<Family>()
                .HasKey(c => new { c.FamilyId });
            builder.Entity<FamilyPerson>()
                .HasKey(c => new { c.FamilyId, c.PersonId });
            builder.Entity<Person>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<PersonFamily>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<PersonFamilyAvail>()
                .HasKey(c => new { c.PersonFamilyAvailId });
            builder.Entity<ScheduleDetail>()
                .HasKey(c => new { c.ScheduleDetailId });
            builder.Entity<ScheduleMaster>()
                .HasKey(c => new { c.ScheduleMasterId });
            builder.Entity<ScheduleTemplate>()
                .HasKey(c => new { c.ScheduleTemplateId });
            builder.Entity<SubEvent>()
                .HasKey(c => new { c.SubEventId });
            builder.Entity<Value>()
                .HasKey(c => new { c.Language_Id, c.DomainId, c.Code_Value });
            builder.Entity<vAttendanceReport>()
                .HasKey(c => new { c.AttendanceDtlId });
            builder.Entity<vAttendanceReportDate>()
                .HasKey(c => new { c.DateAttended });
            builder.Entity<vFamilyReport>()
                .HasKey(c => new { c.FamilyId });
            builder.Entity<vLastAttendedReport>()
                .HasKey(c => new { c.AttendanceDtlId });
            builder.Entity<vPerson>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<vRosterReport>()
                .HasKey(c => new { c.PersonId });
            builder.Entity<vScheduleDetail>()
                .HasKey(c => new { c.ScheduleDetailId });
            builder.Entity<vVisitorAttendance>()
                .HasKey(c => new { c.AttendanceDtlId });
        }
        public DbSet<AttendanceDtl> AttendanceDtl { get; set; }
        public DbSet<AttendanceHdr> AttendanceHdr { get; set; }
        public DbSet<AuditTable> AuditTable { get; set; }
        public DbSet<AuditTransaction> AuditTransaction { get; set; }
        public DbSet<CommFormat1> CommFormat1 { get; set; }
        public DbSet<CommFormat2> CommFormat2 { get; set; }
        public DbSet<CommFormat3> CommFormat3 { get; set; }
        public DbSet<ContactLog> ContactLog { get; set; }
        //public DbSet<ErrorsHelp> ErrorsHelp { get; set; }
        //public DbSet<ErrorsText> ErrorsText { get; set; }
        public DbSet<Event> Event { get; set; }
        public DbSet<EventFamilyPerson> EventFamilyPerson { get; set; }
        public DbSet<Family> Family { get; set; }
        public DbSet<FamilyPerson> FamilyPerson { get; set; }
        //public DbSet<ImportDtl> ImportDtl { get; set; }
        //public DbSet<ImportHdr> ImportHdr { get; set; }
        //public DbSet<OwActivity> OwActivity { get; set; }
        //public DbSet<OwColData> OwColData { get; set; }
        //public DbSet<OwElementSecurity> OwElementSecurity { get; set; }
        //public DbSet<OwPrefObject> OwPrefObject { get; set; }
        //public DbSet<OwPreference> OwPreference { get; set; }
        //public DbSet<OwRole> OwRole { get; set; }
        //public DbSet<OwRolePermission> OwRolePermission { get; set; }
        //public DbSet<OwUser> OwUser { get; set; }
        //public DbSet<OwUserRole> OwUserRole { get; set; }
        public DbSet<Person> Person { get; set; }
        public DbSet<PersonFamily> PersonFamily { get; set; }
        public DbSet<PersonFamilyAvail> PersonFamilyAvail { get; set; }
        public DbSet<ScheduleDetail> ScheduleDetail { get; set; }
        public DbSet<ScheduleMaster> ScheduleMaster { get; set; }
        public DbSet<ScheduleTemplate> ScheduleTemplate { get; set; }
        //public DbSet<SequenceTbl> SequenceTbl { get; set; }
        //public DbSet<SpreadsheetList> SpreadsheetList { get; set; }
        public DbSet<SubEvent> SubEvent { get; set; }
        public DbSet<Value> Value { get; set; }
        public DbSet<vAttendanceReport> vAttendanceReport { get; set; }
        public DbSet<vAttendanceReportDate> vAttendanceReportDate { get; set; }
        public DbSet<vFamilyReport> vFamilyReport { get; set; }
        public DbSet<vLastAttendedReport> vLastAttendedReport { get; set; }
        public DbSet<vPerson> vPerson { get; set; }
        public DbSet<vRosterReport> vRosterReport { get; set; }
        public DbSet<vScheduleDetail> vScheduleDetail { get; set; }
        public DbSet<vVisitorAttendance> vVisitorAttendance { get; set; }
    }
}
