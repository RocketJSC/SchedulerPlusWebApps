using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using SP_Common_Classes.Models.DB;

namespace SP_Reports.Data.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20160823131024_Migration1")]
    partial class Migration1
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.0.0-rtm-21431")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole", b =>
                {
                    b.Property<string>("Id");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("NormalizedName")
                        .HasAnnotation("MaxLength", 256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .HasName("RoleNameIndex");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("SP_Reports.Models.ApplicationUser", b =>
                {
                    b.Property<string>("Id");

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("NormalizedUserName")
                        .HasAnnotation("MaxLength", 256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasAnnotation("MaxLength", 256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("SP_Common_Classes.Models.DB.Person", b =>
                {
                    b.Property<int>("PersonId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Active");

                    b.Property<string>("Address1");

                    b.Property<string>("Address2");

                    b.Property<string>("Address3");

                    b.Property<DateTime>("BirthDate");

                    b.Property<string>("City");

                    b.Property<string>("Class");

                    b.Property<string>("CountryCode");

                    b.Property<string>("County");

                    b.Property<DateTime>("DateAdded");

                    b.Property<string>("DateLastActivity");

                    b.Property<string>("EmailAddress");

                    b.Property<int>("FamilyId");

                    b.Property<string>("FamilyPosition");

                    b.Property<string>("FirstName");

                    b.Property<string>("FollowupInd");

                    b.Property<string>("FollowupNote");

                    b.Property<string>("GoesByName");

                    b.Property<string>("LastName");

                    b.Property<string>("MobileProvider");

                    b.Property<string>("Note1");

                    b.Property<string>("Note2");

                    b.Property<string>("PaidStaff");

                    b.Property<string>("PhoneNumber1");

                    b.Property<string>("PhoneNumber2");

                    b.Property<string>("PhoneNumber3");

                    b.Property<string>("PhoneType1");

                    b.Property<string>("PhoneType2");

                    b.Property<string>("PhoneType3");

                    b.Property<string>("PottyTraining");

                    b.Property<string>("PrimaryContactMethod");

                    b.Property<string>("RosterNotes");

                    b.Property<string>("RosterReview");

                    b.Property<string>("Schedule");

                    b.Property<string>("StateProvince");

                    b.Property<string>("Suffix");

                    b.Property<string>("TextAllowed");

                    b.Property<string>("Title");

                    b.Property<string>("Visitor");

                    b.Property<string>("WebAccessAllowed");

                    b.Property<string>("WebLogonName");

                    b.Property<string>("WebPassword");

                    b.Property<string>("ZipPostalCode");

                    b.HasKey("PersonId");

                    b.ToTable("Person");
                });

            modelBuilder.Entity("SP_Common_Classes.Models.DB.Value", b =>
                {
                    b.Property<int>("Language_Id");

                    b.Property<int>("DomainId");

                    b.Property<string>("Code_Value");

                    b.Property<string>("Code_Label");

                    b.HasKey("Language_Id", "DomainId", "Code_Value");

                    b.ToTable("Value");
                });

            modelBuilder.Entity("SP_Common_Classes.Models.DB.vAttendanceReport", b =>
                {
                    b.Property<int>("AttendanceDtlId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Active");

                    b.Property<int>("AttendanceHdrId");

                    b.Property<string>("CalcFirstName");

                    b.Property<string>("Class");

                    b.Property<string>("ClassAttended");

                    b.Property<DateTime>("DateAttended");

                    b.Property<string>("FamilyPosition");

                    b.Property<string>("LastName");

                    b.Property<string>("PaidStaff");

                    b.Property<string>("Parent1FirstName");

                    b.Property<string>("Parent1LastName");

                    b.Property<string>("Parent1MobileNumber");

                    b.Property<int>("Parent1PersonId");

                    b.Property<string>("Parent2FirstName");

                    b.Property<string>("Parent2LastName");

                    b.Property<string>("Parent2MobileNumber");

                    b.Property<int>("Parent2PersonId");

                    b.Property<string>("PersonClass");

                    b.Property<int>("PersonId");

                    b.Property<string>("PersonVisitor");

                    b.Property<DateTime>("TimeAttended");

                    b.Property<string>("Visitor");

                    b.HasKey("AttendanceDtlId");

                    b.ToTable("vAttendanceReport");
                });

            modelBuilder.Entity("SP_Common_Classes.Models.DB.vPerson", b =>
                {
                    b.Property<int>("PersonId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Active");

                    b.Property<string>("Address1");

                    b.Property<string>("Address2");

                    b.Property<string>("Address3");

                    b.Property<DateTime>("BirthDate");

                    b.Property<string>("CalcFirstName");

                    b.Property<string>("City");

                    b.Property<string>("Class");

                    b.Property<string>("CountryCode");

                    b.Property<string>("County");

                    b.Property<DateTime>("DateAdded");

                    b.Property<string>("DateLastActivity");

                    b.Property<string>("EmailAddress");

                    b.Property<int>("FamilyId");

                    b.Property<string>("FamilyPosition");

                    b.Property<string>("FirstName");

                    b.Property<string>("FollowupInd");

                    b.Property<string>("FollowupNote");

                    b.Property<string>("GoesByName");

                    b.Property<string>("LastName");

                    b.Property<string>("MobileProvider");

                    b.Property<string>("Note1");

                    b.Property<string>("Note2");

                    b.Property<string>("PaidStaff");

                    b.Property<string>("PhoneNumber1");

                    b.Property<string>("PhoneNumber2");

                    b.Property<string>("PhoneNumber3");

                    b.Property<string>("PhoneType1");

                    b.Property<string>("PhoneType2");

                    b.Property<string>("PhoneType3");

                    b.Property<string>("PottyTraining");

                    b.Property<string>("PrimaryContactMethod");

                    b.Property<string>("RosterNotes");

                    b.Property<string>("RosterReview");

                    b.Property<string>("Schedule");

                    b.Property<string>("StateProvince");

                    b.Property<string>("Suffix");

                    b.Property<string>("TextAllowed");

                    b.Property<string>("Title");

                    b.Property<string>("Visitor");

                    b.Property<string>("WebAccessAllowed");

                    b.Property<string>("WebLogonName");

                    b.Property<string>("WebPassword");

                    b.Property<string>("ZipPostalCode");

                    b.HasKey("PersonId");

                    b.ToTable("vPerson");
                });

            modelBuilder.Entity("SP_Common_Classes.Models.DB.vVisitorAttendance", b =>
                {
                    b.Property<int>("AttendanceDtlId")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AttendanceHdrId");

                    b.Property<string>("CalcFirstName");

                    b.Property<string>("Class");

                    b.Property<string>("ClassAttended");

                    b.Property<DateTime>("DateAttended");

                    b.Property<string>("FamilyPosition");

                    b.Property<string>("PaidStaff");

                    b.Property<string>("Parent1FirstName");

                    b.Property<string>("Parent1LastName");

                    b.Property<string>("Parent1MobileNumber");

                    b.Property<string>("Parent2FirstName");

                    b.Property<string>("Parent2LastName");

                    b.Property<string>("Parent2MobileNumber");

                    b.Property<string>("Person_LastName");

                    b.Property<string>("Person_Visitor");

                    b.Property<DateTime>("TimeAttended");

                    b.Property<string>("Visitor");

                    b.HasKey("AttendanceDtlId");

                    b.ToTable("vVisitorAttendance");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole")
                        .WithMany("Claims")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("SP_Reports.Models.ApplicationUser")
                        .WithMany("Claims")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("SP_Reports.Models.ApplicationUser")
                        .WithMany("Logins")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityRole")
                        .WithMany("Users")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("SP_Reports.Models.ApplicationUser")
                        .WithMany("Roles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
        }
    }
}
