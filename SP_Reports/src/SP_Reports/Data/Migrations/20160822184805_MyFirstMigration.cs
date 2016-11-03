using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace SP_Reports.Data.Migrations
{
    public partial class MyFirstMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Person",
                columns: table => new
                {
                    PersonId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Active = table.Column<string>(nullable: true),
                    Address1 = table.Column<string>(nullable: true),
                    Address2 = table.Column<string>(nullable: true),
                    Address3 = table.Column<string>(nullable: true),
                    BirthDate = table.Column<DateTime>(nullable: false),
                    City = table.Column<string>(nullable: true),
                    Class = table.Column<string>(nullable: true),
                    CountryCode = table.Column<string>(nullable: true),
                    County = table.Column<string>(nullable: true),
                    DateAdded = table.Column<DateTime>(nullable: false),
                    DateLastActivity = table.Column<string>(nullable: true),
                    EmailAddress = table.Column<string>(nullable: true),
                    FamilyId = table.Column<int>(nullable: false),
                    FamilyPosition = table.Column<string>(nullable: true),
                    FirstName = table.Column<string>(nullable: true),
                    FollowupInd = table.Column<string>(nullable: true),
                    FollowupNote = table.Column<string>(nullable: true),
                    GoesByName = table.Column<string>(nullable: true),
                    LastName = table.Column<string>(nullable: true),
                    MobileProvider = table.Column<string>(nullable: true),
                    Note1 = table.Column<string>(nullable: true),
                    Note2 = table.Column<string>(nullable: true),
                    PaidStaff = table.Column<string>(nullable: true),
                    PhoneNumber1 = table.Column<string>(nullable: true),
                    PhoneNumber2 = table.Column<string>(nullable: true),
                    PhoneNumber3 = table.Column<string>(nullable: true),
                    PhoneType1 = table.Column<string>(nullable: true),
                    PhoneType2 = table.Column<string>(nullable: true),
                    PhoneType3 = table.Column<string>(nullable: true),
                    PottyTraining = table.Column<string>(nullable: true),
                    PrimaryContactMethod = table.Column<string>(nullable: true),
                    RosterNotes = table.Column<string>(nullable: true),
                    RosterReview = table.Column<string>(nullable: true),
                    Schedule = table.Column<string>(nullable: true),
                    StateProvince = table.Column<string>(nullable: true),
                    Suffix = table.Column<string>(nullable: true),
                    TextAllowed = table.Column<string>(nullable: true),
                    Title = table.Column<string>(nullable: true),
                    Visitor = table.Column<string>(nullable: true),
                    WebAccessAllowed = table.Column<string>(nullable: true),
                    WebLogonName = table.Column<string>(nullable: true),
                    WebPassword = table.Column<string>(nullable: true),
                    ZipPostalCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Person", x => x.PersonId);
                });

            migrationBuilder.CreateTable(
                name: "Value",
                columns: table => new
                {
                    Language_Id = table.Column<int>(nullable: false),
                    DomainId = table.Column<int>(nullable: false),
                    Code_Value = table.Column<string>(nullable: false),
                    Code_Label = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Value", x => new { x.Language_Id, x.DomainId, x.Code_Value });
                });

            migrationBuilder.CreateTable(
                name: "vAttendanceReport",
                columns: table => new
                {
                    AttendanceDtlId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Active = table.Column<string>(nullable: true),
                    AttendanceHdrId = table.Column<int>(nullable: false),
                    CalcFirstName = table.Column<string>(nullable: true),
                    Class = table.Column<string>(nullable: true),
                    ClassAttended = table.Column<string>(nullable: true),
                    DateAttended = table.Column<DateTime>(nullable: false),
                    FamilyPosition = table.Column<string>(nullable: true),
                    LastName = table.Column<string>(nullable: true),
                    PaidStaff = table.Column<string>(nullable: true),
                    Parent1FirstName = table.Column<string>(nullable: true),
                    Parent1LastName = table.Column<string>(nullable: true),
                    Parent1MobileNumber = table.Column<string>(nullable: true),
                    Parent1PersonId = table.Column<int>(nullable: false),
                    Parent2FirstName = table.Column<string>(nullable: true),
                    Parent2LastName = table.Column<string>(nullable: true),
                    Parent2MobileNumber = table.Column<string>(nullable: true),
                    Parent2PersonId = table.Column<int>(nullable: false),
                    PersonClass = table.Column<string>(nullable: true),
                    PersonId = table.Column<int>(nullable: false),
                    PersonVisitor = table.Column<string>(nullable: true),
                    TimeAttended = table.Column<DateTime>(nullable: false),
                    Visitor = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_vAttendanceReport", x => x.AttendanceDtlId);
                });

            migrationBuilder.CreateTable(
                name: "vPerson",
                columns: table => new
                {
                    PersonId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Active = table.Column<string>(nullable: true),
                    Address1 = table.Column<string>(nullable: true),
                    Address2 = table.Column<string>(nullable: true),
                    Address3 = table.Column<string>(nullable: true),
                    BirthDate = table.Column<DateTime>(nullable: false),
                    CalcFirstName = table.Column<string>(nullable: true),
                    City = table.Column<string>(nullable: true),
                    Class = table.Column<string>(nullable: true),
                    CountryCode = table.Column<string>(nullable: true),
                    County = table.Column<string>(nullable: true),
                    DateAdded = table.Column<DateTime>(nullable: false),
                    DateLastActivity = table.Column<string>(nullable: true),
                    EmailAddress = table.Column<string>(nullable: true),
                    FamilyId = table.Column<int>(nullable: false),
                    FamilyPosition = table.Column<string>(nullable: true),
                    FirstName = table.Column<string>(nullable: true),
                    FollowupInd = table.Column<string>(nullable: true),
                    FollowupNote = table.Column<string>(nullable: true),
                    GoesByName = table.Column<string>(nullable: true),
                    LastName = table.Column<string>(nullable: true),
                    MobileProvider = table.Column<string>(nullable: true),
                    Note1 = table.Column<string>(nullable: true),
                    Note2 = table.Column<string>(nullable: true),
                    PaidStaff = table.Column<string>(nullable: true),
                    PhoneNumber1 = table.Column<string>(nullable: true),
                    PhoneNumber2 = table.Column<string>(nullable: true),
                    PhoneNumber3 = table.Column<string>(nullable: true),
                    PhoneType1 = table.Column<string>(nullable: true),
                    PhoneType2 = table.Column<string>(nullable: true),
                    PhoneType3 = table.Column<string>(nullable: true),
                    PottyTraining = table.Column<string>(nullable: true),
                    PrimaryContactMethod = table.Column<string>(nullable: true),
                    RosterNotes = table.Column<string>(nullable: true),
                    RosterReview = table.Column<string>(nullable: true),
                    Schedule = table.Column<string>(nullable: true),
                    StateProvince = table.Column<string>(nullable: true),
                    Suffix = table.Column<string>(nullable: true),
                    TextAllowed = table.Column<string>(nullable: true),
                    Title = table.Column<string>(nullable: true),
                    Visitor = table.Column<string>(nullable: true),
                    WebAccessAllowed = table.Column<string>(nullable: true),
                    WebLogonName = table.Column<string>(nullable: true),
                    WebPassword = table.Column<string>(nullable: true),
                    ZipPostalCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_vPerson", x => x.PersonId);
                });

            migrationBuilder.CreateTable(
                name: "vVisitorAttendance",
                columns: table => new
                {
                    AttendanceDtlId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AttendanceHdrId = table.Column<int>(nullable: false),
                    CalcFirstName = table.Column<string>(nullable: true),
                    Class = table.Column<string>(nullable: true),
                    ClassAttended = table.Column<string>(nullable: true),
                    DateAttended = table.Column<DateTime>(nullable: false),
                    FamilyPosition = table.Column<string>(nullable: true),
                    PaidStaff = table.Column<string>(nullable: true),
                    Parent1FirstName = table.Column<string>(nullable: true),
                    Parent1LastName = table.Column<string>(nullable: true),
                    Parent1MobileNumber = table.Column<string>(nullable: true),
                    Parent2FirstName = table.Column<string>(nullable: true),
                    Parent2LastName = table.Column<string>(nullable: true),
                    Parent2MobileNumber = table.Column<string>(nullable: true),
                    Person_LastName = table.Column<string>(nullable: true),
                    Person_Visitor = table.Column<string>(nullable: true),
                    TimeAttended = table.Column<DateTime>(nullable: false),
                    Visitor = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_vVisitorAttendance", x => x.AttendanceDtlId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Person");

            migrationBuilder.DropTable(
                name: "Value");

            migrationBuilder.DropTable(
                name: "vAttendanceReport");

            migrationBuilder.DropTable(
                name: "vPerson");

            migrationBuilder.DropTable(
                name: "vVisitorAttendance");
        }
    }
}
