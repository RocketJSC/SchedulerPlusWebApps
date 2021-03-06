/****** Object:  Database [SchedulerPlus]    Script Date: 11/4/2016 11:36:22 AM ******/
CREATE DATABASE [SchedulerPlus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchedulerPLUS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\ShedulePlus.mdf' , SIZE = 16064KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'SchedulerPLUS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\ShedulePlus.ldf' , SIZE = 57664KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [SchedulerPlus] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchedulerPlus].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [SchedulerPlus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchedulerPlus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchedulerPlus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchedulerPlus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchedulerPlus] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchedulerPlus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchedulerPlus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchedulerPlus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchedulerPlus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchedulerPlus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchedulerPlus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchedulerPlus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchedulerPlus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchedulerPlus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchedulerPlus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchedulerPlus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchedulerPlus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchedulerPlus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchedulerPlus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchedulerPlus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchedulerPlus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchedulerPlus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchedulerPlus] SET RECOVERY FULL 
GO
ALTER DATABASE [SchedulerPlus] SET  MULTI_USER 
GO
ALTER DATABASE [SchedulerPlus] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [SchedulerPlus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchedulerPlus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchedulerPlus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SchedulerPlus] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SchedulerPlus', N'ON'
GO
USE [SchedulerPlus]
GO
/****** Object:  UserDefinedFunction [dbo].[FlexAltDomain]    Script Date: 11/4/2016 11:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FlexAltDomain](@DomainId integer)  
RETURNS varchar(10) AS  
BEGIN 
    DECLARE @CodeValue varchar(10)
    select @codevalue = substring(code_value, 2, 10) from value where domainid = @DomainId and left(code_value,1) = '#'
    RETURN @codevalue
END

GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/4/2016 11:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceDtl]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttendanceDtl](
	[AttendanceDtlId] [int] NOT NULL,
	[AttendanceHdrId] [int] NOT NULL,
	[Class] [char](2) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[Present] [char](1) NOT NULL CONSTRAINT [DF_AttendanceDtl_Present]  DEFAULT ('1'),
	[Note] [varchar](255) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[PagerNbr] [char](10) NOT NULL CONSTRAINT [DF_AttendanceDtl_PagerNbr]  DEFAULT (' '),
	[LabelNbr] [char](10) NOT NULL CONSTRAINT [DF_AttendanceDtl_LabelNbr]  DEFAULT (' '),
	[Visitor] [char](1) NOT NULL CONSTRAINT [DF_AttendanceDtl_Visitor]  DEFAULT ('0'),
 CONSTRAINT [PK_AttendanceDtl] PRIMARY KEY CLUSTERED 
(
	[AttendanceDtlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttendanceHdr]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttendanceHdr](
	[AttendanceHdrId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Time1] [datetime] NOT NULL,
	[Time2] [datetime] NOT NULL,
	[Time3] [datetime] NOT NULL,
	[Time4] [datetime] NOT NULL,
	[Time5] [datetime] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[CoEventId1] [int] NOT NULL CONSTRAINT [DF_AttendanceHdr_CoEventId1]  DEFAULT ((0)),
	[CoEventId2] [int] NOT NULL CONSTRAINT [DF_AttendanceHdr_CoEventId2]  DEFAULT ((0)),
	[CoEventId3] [int] NOT NULL CONSTRAINT [DF_AttendanceHdr_CoEventId3]  DEFAULT ((0)),
	[CoEventId4] [int] NOT NULL CONSTRAINT [DF_AttendanceHdr_CoEventId4]  DEFAULT ((0)),
	[CoEventId5] [int] NOT NULL CONSTRAINT [DF_AttendanceHdr_CoEventId5]  DEFAULT ((0)),
 CONSTRAINT [PK_AttendanceHdr] PRIMARY KEY CLUSTERED 
(
	[AttendanceHdrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditColumn]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditColumn](
	[AuditSeq] [int] NOT NULL,
	[ColumnName] [char](30) NOT NULL,
	[ColumnValue] [varchar](1028) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditTable]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditTable](
	[AuditSeq] [int] NOT NULL,
	[TableName] [char](30) NOT NULL,
	[TranCode] [char](1) NOT NULL,
	[Key1] [varchar](50) NOT NULL,
	[Key2] [varchar](50) NULL,
	[Key3] [varchar](50) NULL,
	[Key4] [varchar](50) NULL,
	[Key5] [varchar](50) NULL,
 CONSTRAINT [PK_AuditTable] PRIMARY KEY CLUSTERED 
(
	[AuditSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditTransaction]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditTransaction](
	[AuditSeq] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [char](15) NOT NULL,
	[SystemUser] [varchar](256) NOT NULL,
	[ActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AuditTransaction] PRIMARY KEY CLUSTERED 
(
	[AuditSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommFormat1]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommFormat1](
	[PersonId] [int] NOT NULL,
	[FamilyId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
 CONSTRAINT [PK_CommFormat1] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[FamilyId] ASC,
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommFormat2]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommFormat2](
	[ScheduleMasterId] [int] NOT NULL,
	[FamilyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_CommFormat2_1] PRIMARY KEY CLUSTERED 
(
	[ScheduleMasterId] ASC,
	[FamilyId] ASC,
	[PersonId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommFormat3]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommFormat3](
	[ScheduleMasterId] [int] NOT NULL,
	[FamilyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_CommFormat3] PRIMARY KEY CLUSTERED 
(
	[ScheduleMasterId] ASC,
	[FamilyId] ASC,
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactLog]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactLog](
	[ContactLogId] [int] NOT NULL,
	[WhenSent] [datetime] NOT NULL,
	[Type] [char](1) NOT NULL,
	[Origin] [char](1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[SubjectHeader] [varchar](100) NOT NULL,
	[Text] [varchar](4096) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
 CONSTRAINT [PK_ContactLog] PRIMARY KEY CLUSTERED 
(
	[ContactLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Errors_Help]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Errors_Help](
	[Error_Source] [char](20) NOT NULL,
	[Error_Level] [int] NOT NULL,
	[Error_Code] [int] NOT NULL,
	[HelpID] [int] NULL,
	[Help_File] [char](20) NOT NULL,
	[More_Info] [varchar](255) NOT NULL,
	[Literal_id] [int] NULL,
 CONSTRAINT [PK_ERRORS_HELP] PRIMARY KEY CLUSTERED 
(
	[Error_Source] ASC,
	[Error_Level] ASC,
	[Error_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Errors_Text]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Errors_Text](
	[Language_Id] [int] NOT NULL,
	[Literal_ID] [int] NOT NULL,
	[Error_Text] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ERRORS_TEXT] PRIMARY KEY CLUSTERED 
(
	[Language_Id] ASC,
	[Literal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[EventId] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [char](1) NOT NULL CONSTRAINT [DF_Event_Active]  DEFAULT ('1'),
	[Slots] [int] NOT NULL CONSTRAINT [DF_Event_Slots]  DEFAULT ((0)),
	[StartTime] [datetime] NOT NULL,
	[StopTime] [datetime] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[TopLevel] [char](1) NOT NULL CONSTRAINT [DF_Event_TopLevel]  DEFAULT ('N'),
	[SeqNbr] [int] NOT NULL CONSTRAINT [DF_Event_SeqNbr]  DEFAULT ((0)),
	[Class1] [char](2) NOT NULL CONSTRAINT [DF_Event_Class1]  DEFAULT (' '),
	[Class2] [char](2) NOT NULL CONSTRAINT [DF_Event_Class2]  DEFAULT (' '),
	[Class3] [char](2) NOT NULL CONSTRAINT [DF_Event_Class3]  DEFAULT (' '),
	[Class4] [char](2) NOT NULL CONSTRAINT [DF_Event_Class4]  DEFAULT (' '),
	[Class5] [char](2) NOT NULL CONSTRAINT [DF_Event_Class5]  DEFAULT (' '),
	[Class6] [char](2) NOT NULL CONSTRAINT [DF_Event_Class6]  DEFAULT (' '),
	[FamilyPosition1] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition1]  DEFAULT (' '),
	[FamilyPosition2] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition2]  DEFAULT (' '),
	[FamilyPosition3] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition3]  DEFAULT (' '),
	[FamilyPosition4] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition4]  DEFAULT (' '),
	[FamilyPosition5] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition5]  DEFAULT (' '),
	[FamilyPosition6] [char](1) NOT NULL CONSTRAINT [DF_Event_FamilyPosition6]  DEFAULT (' '),
	[Class] [char](2) NOT NULL CONSTRAINT [DF_Event_Class]  DEFAULT (' '),
	[PaidStaff] [char](1) NOT NULL CONSTRAINT [DF_Event_PaidStaff]  DEFAULT (' '),
	[EType] [char](1) NOT NULL CONSTRAINT [DF_Event_Type]  DEFAULT (' '),
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventFamilyPerson]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventFamilyPerson](
	[EventFamilyPersonId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[FamilyId] [int] NOT NULL CONSTRAINT [DF_EventFamilyPerson_FamilyId]  DEFAULT ((0)),
	[PersonId] [int] NOT NULL CONSTRAINT [DF_EventFamilyPerson_PersonId]  DEFAULT ((0)),
	[Schedule] [char](1) NOT NULL CONSTRAINT [DF_EventFamilyPerson_Schedule]  DEFAULT ('1'),
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
 CONSTRAINT [PK_EventFamilyPerson] PRIMARY KEY CLUSTERED 
(
	[EventFamilyPersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Family]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Family](
	[FamilyId] [int] NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[ScheduleTogether] [char](1) NOT NULL CONSTRAINT [DF_Family_ScheduleTogether]  DEFAULT ('1'),
	[Active] [char](1) NOT NULL CONSTRAINT [DF_Family_Active]  DEFAULT ('1'),
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[Note1] [varchar](255) NOT NULL,
	[Schedule] [char](1) NOT NULL CONSTRAINT [DF_Family_Schedule]  DEFAULT ('1'),
	[SpecialHandling] [char](1) NOT NULL CONSTRAINT [DF_Family_SpecialHandling]  DEFAULT ((0)),
	[SpecialHandlingNote] [varchar](255) NOT NULL,
	[Visitor] [char](1) NOT NULL CONSTRAINT [DF_Family_Visitor]  DEFAULT ('0'),
 CONSTRAINT [PK_Family] PRIMARY KEY CLUSTERED 
(
	[FamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FamilyPerson]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamilyPerson](
	[FamilyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_FamilyPerson_1] PRIMARY KEY CLUSTERED 
(
	[FamilyId] ASC,
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportDtl]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportDtl](
	[ImportDtlId] [int] NOT NULL,
	[ImportHdrId] [int] NOT NULL,
	[SPColumnName] [char](20) NOT NULL,
	[ImportColumnName] [char](20) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
 CONSTRAINT [PK_ImportDtl] PRIMARY KEY CLUSTERED 
(
	[ImportDtlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportHdr]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportHdr](
	[ImportHdrId] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[TableName] [char](20) NOT NULL,
	[FileExtensions] [char](20) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
 CONSTRAINT [PK_ImportHdr] PRIMARY KEY CLUSTERED 
(
	[ImportHdrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owActivity]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owActivity](
	[ActivityId] [int] NOT NULL,
	[ActivityName] [varchar](50) NOT NULL,
	[DefaultPriviledge] [char](1) NOT NULL,
 CONSTRAINT [PK_owActivity] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owColData]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owColData](
	[UserID] [char](15) NOT NULL,
	[SprdID] [int] NOT NULL,
	[ColWidth] [char](89) NOT NULL,
	[URememberOpt] [smallint] NOT NULL,
	[UCustSortOpt] [smallint] NOT NULL,
	[UCustSort] [char](6) NOT NULL,
	[FrozenCol] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_owColData] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[SprdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owElementSecurity]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owElementSecurity](
	[ObjectID] [int] NOT NULL,
	[ElementID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Privilege] [char](1) NOT NULL,
 CONSTRAINT [PK_owELEMENTSECURITY] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[ElementID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owPreference]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owPreference](
	[UserId] [varchar](256) NOT NULL,
	[PrefId] [int] NOT NULL,
	[PrefValue] [varchar](255) NOT NULL,
 CONSTRAINT [PK_owPreference] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PrefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owPrefObject]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owPrefObject](
	[PrefId] [int] NOT NULL,
	[PrefName] [varchar](50) NOT NULL,
	[PrefType] [int] NOT NULL,
 CONSTRAINT [PK_owPrefObject] PRIMARY KEY CLUSTERED 
(
	[PrefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owRole]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owRole](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_owRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owRolePermission]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owRolePermission](
	[RoleId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[Privilege] [char](1) NOT NULL,
 CONSTRAINT [PK_owRolePermission] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owUser]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owUser](
	[UserId] [char](15) NOT NULL,
	[Password] [char](8) NOT NULL,
 CONSTRAINT [PK_owUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[owUserRole]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[owUserRole](
	[UserId] [varchar](256) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_owUserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[GoesByName] [varchar](30) NOT NULL,
	[FamilyId] [int] NOT NULL CONSTRAINT [DF_Person_FamilyId]  DEFAULT (0),
	[EmailAddress] [varchar](128) NOT NULL,
	[PhoneNumber1] [char](20) NOT NULL,
	[PhoneType1] [char](1) NOT NULL,
	[PhoneNumber2] [char](20) NOT NULL,
	[PhoneType2] [char](1) NOT NULL,
	[PhoneNumber3] [char](20) NOT NULL,
	[PhoneType3] [char](1) NOT NULL,
	[MobileProvider] [char](1) NOT NULL,
	[Address1] [varchar](30) NOT NULL,
	[Address2] [varchar](30) NOT NULL,
	[Address3] [varchar](30) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[StateProvince] [char](2) NOT NULL,
	[ZipPostalCode] [char](10) NOT NULL,
	[CountryCode] [char](3) NOT NULL,
	[County] [varchar](30) NOT NULL,
	[FamilyPosition] [char](1) NOT NULL,
	[BirthDate] [datetime] NOT NULL CONSTRAINT [DF_Person_BirthDate]  DEFAULT (0),
	[Class] [char](2) NOT NULL,
	[Title] [char](10) NOT NULL,
	[PrimaryContactMethod] [char](1) NOT NULL CONSTRAINT [DF_Person_PrimaryContactMethod]  DEFAULT (1),
	[TextAllowed] [char](1) NOT NULL CONSTRAINT [DF_Person_TextAllowed]  DEFAULT (0),
	[Note1] [varchar](255) NOT NULL,
	[Note2] [varchar](255) NOT NULL,
	[FollowupInd] [char](1) NOT NULL CONSTRAINT [DF_Person_FollowupInd]  DEFAULT (0),
	[FollowupNote] [varchar](255) NOT NULL,
	[Active] [char](1) NOT NULL CONSTRAINT [DF_Person_Active]  DEFAULT ('1'),
	[PaidStaff] [char](1) NOT NULL CONSTRAINT [DF_Person_PaidStaff]  DEFAULT (0),
	[WebAccessAllowed] [char](1) NOT NULL CONSTRAINT [DF_Person_WebAccessAllowed]  DEFAULT (0),
	[WebLogonName] [char](30) NOT NULL,
	[WebPassword] [char](30) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[Schedule] [char](1) NOT NULL CONSTRAINT [DF_Person_Schedule]  DEFAULT ('1'),
	[Suffix] [char](10) NOT NULL CONSTRAINT [DF_Person_Suffix]  DEFAULT (' '),
	[RosterNotes] [varchar](50) NOT NULL CONSTRAINT [DF_Person_RosterNotes]  DEFAULT (' '),
	[RosterReview] [char](1) NOT NULL CONSTRAINT [DF_Person_RosterReview]  DEFAULT ('0'),
	[PottyTraining] [char](1) NOT NULL CONSTRAINT [DF_Person_PottyTraining]  DEFAULT ('N'),
	[Visitor] [char](1) NOT NULL CONSTRAINT [DF_Person_Type]  DEFAULT ('0'),
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonFamily]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonFamily](
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_PersonFamily] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonFamilyAvail]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonFamilyAvail](
	[PersonFamilyAvailId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[FamilyId] [int] NOT NULL,
	[ScheduleTemplateId] [int] NOT NULL,
	[Available] [char](1) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [datetime] NULL,
 CONSTRAINT [PK_PersonFamilyAvail] PRIMARY KEY CLUSTERED 
(
	[PersonFamilyAvailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleDetail](
	[ScheduleDetailId] [int] NOT NULL,
	[ScheduleTemplateiD] [int] NOT NULL,
	[FamilyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [datetime] NULL,
	[ICSData] [varchar](256) NOT NULL CONSTRAINT [DF_ScheduleDetail_ICSData]  DEFAULT (' '),
	[Swapped] [char](1) NOT NULL CONSTRAINT [DF_ScheduleDetail_Swapped]  DEFAULT ('0'),
	[EType] [char](1) NOT NULL CONSTRAINT [DF_ScheduleDetail_Type]  DEFAULT (' '),
 CONSTRAINT [PK_ScheduleDetail] PRIMARY KEY CLUSTERED 
(
	[ScheduleDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScheduleMaster]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleMaster](
	[ScheduleMasterId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_Active]  DEFAULT ('1'),
	[MaxTimesScheduled] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Periodicity] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_Periodicity]  DEFAULT ('2'),
	[PeriodSunday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodSunday]  DEFAULT ((0)),
	[PeriodMonday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodMonday]  DEFAULT ((0)),
	[PeriodTuesday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodTuesday]  DEFAULT ((0)),
	[PeriodWednesday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodWednesday]  DEFAULT ((0)),
	[PeriodThursday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodThursday]  DEFAULT ((0)),
	[PeriodFriday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodFriday]  DEFAULT ((0)),
	[PeriodSaturday] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PeriodSaturday]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
	[Class1] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class1]  DEFAULT (' '),
	[Class2] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class2]  DEFAULT (' '),
	[Class3] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class3]  DEFAULT (' '),
	[Class4] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class4]  DEFAULT (' '),
	[Class5] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class5]  DEFAULT (' '),
	[Class6] [char](2) NOT NULL CONSTRAINT [DF_ScheduleMaster_Class6]  DEFAULT (' '),
	[FamilyPosition1] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPosition1]  DEFAULT (' '),
	[FamilyPosition2] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPosition2]  DEFAULT (' '),
	[FamilyPosition3] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPosition3]  DEFAULT (' '),
	[FamilyPosition4] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPosition4]  DEFAULT (' '),
	[FamilyPosition5] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPosition5]  DEFAULT (' '),
	[FamilyPosition6] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_FamilyPositon6]  DEFAULT (' '),
	[PaidStaff] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_PaidStaff]  DEFAULT (' '),
	[EType] [char](1) NOT NULL CONSTRAINT [DF_ScheduleMaster_Type]  DEFAULT (' '),
 CONSTRAINT [PK_ScheduleMaster] PRIMARY KEY CLUSTERED 
(
	[ScheduleMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleTemplate](
	[ScheduleTemplateId] [int] NOT NULL,
	[ScheduleMasterId] [int] NOT NULL,
	[SubEventId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Slots] [int] NOT NULL CONSTRAINT [DF_ScheduleTemplate_Slots]  DEFAULT ((0)),
	[SlotsTaken] [int] NOT NULL CONSTRAINT [DF_ScheduleTemplate_SlotsTaken]  DEFAULT ((0)),
	[Frozen] [char](1) NOT NULL CONSTRAINT [DF_ScheduleTemplate_Frozen]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL,
	[DateLastActivity] [char](23) NULL,
 CONSTRAINT [PK_ScheduleTemplate] PRIMARY KEY CLUSTERED 
(
	[ScheduleTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sequence_Tbl]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sequence_Tbl](
	[SQL_TABLE] [varchar](50) NOT NULL,
	[LAST_USED_ID] [int] NOT NULL,
 CONSTRAINT [Sequence_Tbl_Primary] PRIMARY KEY CLUSTERED 
(
	[SQL_TABLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpreadsheetList]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SpreadsheetList](
	[SprdID] [int] NOT NULL,
	[SheetID] [char](15) NOT NULL,
	[SprdDesc] [char](50) NOT NULL,
	[DateLastActivity] [datetime] NOT NULL,
	[CustomizedInd] [char](1) NOT NULL,
 CONSTRAINT [PK_SPREADSHEETLIST] PRIMARY KEY CLUSTERED 
(
	[SprdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubEvent]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubEvent](
	[SubEventId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[ChildId] [int] NOT NULL,
 CONSTRAINT [PK_SubEvent] PRIMARY KEY CLUSTERED 
(
	[SubEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Value]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Value](
	[Language_Id] [int] NOT NULL,
	[DomainID] [int] NOT NULL,
	[Code_Value] [varchar](50) NOT NULL,
	[Code_Label] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VALUE] PRIMARY KEY CLUSTERED 
(
	[Language_Id] ASC,
	[DomainID] ASC,
	[Code_Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[owvDeftPermission]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvDeftPermission] AS
SELECT  owRole.RoleId, owActivity.*
FROM    owRole CROSS JOIN owActivity

GO
/****** Object:  View [dbo].[owvRolePermission]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvRolePermission] AS
SELECT  owvDeftPermission.RoleId, owvDeftPermission.ActivityId, COALESCE (owRolePermission.Privilege, owvDeftPermission.DefaultPriviledge) AS Privilege,
        CASE WHEN owRolePermission.Privilege IS NULL THEN 'D' ELSE 'A' END AS Type, owvDeftPermission.ActivityName
FROM    owvDeftPermission LEFT OUTER JOIN
            owRolePermission ON owvDeftPermission.RoleId = owRolePermission.RoleId AND 
            owvDeftPermission.ActivityId = owRolePermission.ActivityId

GO
/****** Object:  View [dbo].[owvUserPermission]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvUserPermission] AS
SELECT owvRolePermission.RoleId, owvRolePermission.ActivityId, owvRolePermission.Privilege, owvRolePermission.Type, 
       owUserRole.UserId, owvRolePermission.ActivityName
FROM   owUserRole INNER JOIN
       owvRolePermission ON owUserRole.RoleId = owvRolePermission.RoleId

GO
/****** Object:  View [dbo].[vFamilyPerson]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vFamilyPerson]
AS
SELECT     TOP (100) PERCENT dbo.Family.FamilyId, COALESCE (dbo.Person.PersonId, 0) AS PersonId, dbo.Family.LastName AS Family_LastName, dbo.Family.Active AS Family_Active, 
                      COALESCE (dbo.Person.FirstName, ' ') AS FirstName, COALESCE (dbo.Person.LastName, ' ') AS Person_LastName, COALESCE (dbo.Person.GoesByName, ' ') AS Person_GoesByName, 
                      COALESCE (dbo.Person.Active, 0) AS Person_Active, COALESCE (dbo.Person.FamilyPosition, '1') AS FamilyPosition, COALESCE (dbo.Person.Schedule, ' ') AS Person_Schedule, 
                      dbo.Family.Schedule AS Family_Schedule, dbo.Family.SpecialHandling, dbo.Family.SpecialHandlingNote, COALESCE (dbo.Person.Suffix, ' ') AS Person_Suffix, 
                      COALESCE (dbo.Person.PrimaryContactMethod, ' ') AS Person_PrimaryContactMethod, COALESCE (dbo.Person.EmailAddress, ' ') AS Person_EmailAddress, COALESCE (dbo.Person.Class, ' ') 
                      AS Person_Class, COALESCE (dbo.Person.PhoneNumber1, ' ') AS Person_PhoneNbr1, COALESCE (dbo.Person.PhoneType1, ' ') AS Person_PhoneType1, COALESCE (dbo.Person.PhoneNumber2, ' ') 
                      AS Person_PhoneNbr2, COALESCE (dbo.Person.PhoneType2, ' ') AS Person_PhoneType2, COALESCE (dbo.Person.PhoneNumber3, ' ') AS Person_PhoneNbr3, COALESCE (dbo.Person.PhoneType3, 
                      ' ') AS Person_PhoneType3, COALESCE (dbo.Person.MobileProvider, ' ') AS Person_MobileProvider, COALESCE (dbo.Person.TextAllowed, '') AS Person_TextAllowed, 
                      COALESCE (dbo.Person.RosterNotes, ' ') AS Person_RosterNotes, COALESCE (dbo.Person.RosterReview, ' ') AS Person_RosterReview, COALESCE (dbo.Person.PottyTraining, ' ') 
                      AS Person_PottyTraining, COALESCE (CASE WHEN person.goesbyname <> '' THEN person.goesbyname ELSE person.firstname END, ' ') AS CalcFirstName, COALESCE (dbo.Person.Visitor, '') 
                      AS Person_Visitor, dbo.Family.Visitor AS Family_Visitor, COALESCE (dbo.Person.PaidStaff, '') AS Person_PaidStaff, COALESCE (dbo.Person.Note1, '') AS Person_Note1, 
                      COALESCE (dbo.Person.Note2, '') AS Person_Note2
FROM         dbo.Family LEFT OUTER JOIN
                      dbo.Person ON dbo.Person.FamilyId = dbo.Family.FamilyId
ORDER BY dbo.Family.FamilyId, FamilyPosition


GO
/****** Object:  View [dbo].[vAttendanceDtl]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAttendanceDtl]
AS
SELECT     dbo.AttendanceDtl.AttendanceDtlId, dbo.AttendanceDtl.AttendanceHdrId, dbo.AttendanceDtl.Class, dbo.AttendanceDtl.PersonId, dbo.AttendanceDtl.Time, dbo.AttendanceDtl.Present, 
                      dbo.AttendanceDtl.Note, dbo.AttendanceDtl.DateAdded, dbo.AttendanceDtl.DateLastActivity, dbo.AttendanceDtl.PagerNbr, dbo.AttendanceDtl.LabelNbr, dbo.AttendanceDtl.Visitor, dbo.Event.Title, 
                      dbo.Event.Description, dbo.vFamilyPerson.Person_LastName, dbo.vFamilyPerson.FirstName, dbo.vFamilyPerson.Person_GoesByName, dbo.vFamilyPerson.FamilyPosition, 
                      dbo.vFamilyPerson.FamilyId, dbo.vFamilyPerson.Family_LastName, dbo.vFamilyPerson.Person_Class, dbo.AttendanceHdr.EventId, dbo.AttendanceHdr.Date, dbo.vFamilyPerson.CalcFirstName, 
                      dbo.vFamilyPerson.Person_Visitor, dbo.vFamilyPerson.Person_RosterReview, dbo.vFamilyPerson.Person_RosterNotes, dbo.vFamilyPerson.Person_PottyTraining
FROM         dbo.AttendanceDtl INNER JOIN
                      dbo.AttendanceHdr ON dbo.AttendanceDtl.AttendanceHdrId = dbo.AttendanceHdr.AttendanceHdrId INNER JOIN
                      dbo.Event ON dbo.AttendanceHdr.EventId = dbo.Event.EventId INNER JOIN
                      dbo.vFamilyPerson ON dbo.AttendanceDtl.PersonId = dbo.vFamilyPerson.PersonId


GO
/****** Object:  View [dbo].[vWeekly_Attendance]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWeekly_Attendance]
AS
SELECT DISTINCT TOP (100) PERCENT PersonId, CalcFirstName, Person_LastName, Class, Note
FROM         dbo.vAttendanceDtl
WHERE     (AttendanceHdrId = 7)
ORDER BY Class, Person_LastName

GO
/****** Object:  View [dbo].[vPerson]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPerson]
AS
SELECT     PersonId, FirstName, LastName, GoesByName, FamilyId, EmailAddress, PhoneNumber1, PhoneType1, PhoneNumber2, PhoneType2, PhoneNumber3, 
                      PhoneType3, MobileProvider, Address1, Address2, Address3, City, StateProvince, ZipPostalCode, CountryCode, County, FamilyPosition, BirthDate, 
                      Class, Title, PrimaryContactMethod, TextAllowed, Note1, Note2, FollowupInd, FollowupNote, Active, PaidStaff, WebAccessAllowed, WebLogonName, 
                      WebPassword, DateAdded, DateLastActivity, Schedule, Suffix, RosterNotes, RosterReview, PottyTraining, Visitor, 
                      CASE WHEN person.goesbyname <> '' THEN person.goesbyname ELSE person.firstname END AS CalcFirstName
FROM         dbo.Person

GO
/****** Object:  View [dbo].[vVisitorAttendance]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vVisitorAttendance]
AS
SELECT     TOP (100) PERCENT dbo.vAttendanceDtl.AttendanceDtlId, dbo.vAttendanceDtl.AttendanceHdrId, dbo.vAttendanceDtl.Date AS DateAttended, dbo.vAttendanceDtl.CalcFirstName, 
                      dbo.vAttendanceDtl.Person_LastName, dbo.vAttendanceDtl.Class,
                          (SELECT     TOP (1) Code_Label
                            FROM          dbo.Value
                            WHERE      (dbo.vAttendanceDtl.Class = Code_Value) AND (DomainID = 115124) AND (Language_Id = 0)) AS ClassAttended, 
                      (CASE WHEN vperson_1.phonetype1 = '1' THEN vperson_1.phonenumber1 WHEN vperson_1.phonetype2 = '1' THEN vperson_1.phonenumber2 WHEN vperson_1.phonetype3 = '1' THEN vperson_1.phonenumber3
                       END) AS Parent1MobileNumber, COALESCE (vPerson_1.PersonId, '0') AS Parent1PersonId, vPerson_1.CalcFirstName AS Parent1FirstName, vPerson_1.LastName AS Parent1LastName, 
                      (CASE WHEN vperson_2.phonetype1 = '1' THEN vperson_2.phonenumber1 WHEN vperson_2.phonetype2 = '1' THEN vperson_2.phonenumber2 WHEN vperson_2.phonetype3 = '1' THEN vperson_2.phonenumber3
                       END) AS Parent2MobileNumber, COALESCE (vPerson_2.PersonId, '0') AS Parent2PersonId, vPerson_2.CalcFirstName AS Parent2FirstName, vPerson_2.LastName AS Parent2LastName, 
                      dbo.vAttendanceDtl.Person_Visitor, dbo.vAttendanceDtl.Visitor, dbo.vPerson.FamilyPosition, dbo.vPerson.PaidStaff, dbo.vAttendanceDtl.Time AS TimeAttended
FROM         dbo.vAttendanceDtl LEFT OUTER JOIN
                      dbo.vPerson ON dbo.vAttendanceDtl.PersonId = dbo.vPerson.PersonId LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_1 ON vPerson_1.FamilyId = dbo.vAttendanceDtl.FamilyId AND vPerson_1.FamilyPosition = '1' LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_2 ON vPerson_2.FamilyId = dbo.vAttendanceDtl.FamilyId AND vPerson_2.FamilyPosition = '2'
WHERE     (dbo.vAttendanceDtl.Person_Visitor = '1') AND (dbo.vPerson.PaidStaff <> '1')
ORDER BY dbo.vAttendanceDtl.Class, dbo.vAttendanceDtl.Person_LastName, dbo.vAttendanceDtl.CalcFirstName
GO
/****** Object:  View [dbo].[vVisitors]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vVisitors]
AS
SELECT     TOP (100) PERCENT dbo.vPerson.CalcFirstName, dbo.vPerson.LastName,
                          (SELECT     TOP (1) Code_Label
                            FROM          dbo.Value
                            WHERE      (dbo.vPerson.Class = Code_Value) AND (DomainID = 115124) AND (Language_Id = 0)) AS ClassAttended, 
                      vPerson_1.CalcFirstName AS Parent1FirstName, vPerson_1.LastName AS Parent1LastName, 
                      (CASE WHEN vperson_1.phonetype1 = '1' THEN vperson_1.phonenumber1 WHEN vperson_1.phonetype2 = '1' THEN vperson_1.phonenumber2 WHEN vperson_1.phonetype3
                       = '1' THEN vperson_1.phonenumber3 END) AS Parent1MobileNumber, vPerson_2.CalcFirstName AS Parent2FirstName, 
                      vPerson_2.LastName AS Parent2LastName, 
                      (CASE WHEN vperson_2.phonetype1 = '1' THEN vperson_2.phonenumber1 WHEN vperson_2.phonetype2 = '1' THEN vperson_2.phonenumber2 WHEN vperson_2.phonetype3
                       = '1' THEN vperson_2.phonenumber3 END) AS Parent2MobileNumber, dbo.vPerson.Note1, dbo.vPerson.PersonId, dbo.vPerson.FirstName, 
                      dbo.vPerson.GoesByName, dbo.vPerson.FamilyId, dbo.vPerson.EmailAddress, dbo.vPerson.FamilyPosition, dbo.vPerson.Active, 
                      dbo.vPerson.Visitor
FROM         dbo.vPerson LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_1 ON dbo.vPerson.FamilyId = vPerson_1.FamilyId AND vPerson_1.FamilyPosition = '1' LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_2 ON dbo.vPerson.FamilyId = vPerson_2.FamilyId AND vPerson_2.FamilyPosition = '2'
WHERE     (dbo.vPerson.Visitor = '1') AND (dbo.vPerson.Active = '1')
ORDER BY dbo.vPerson.LastName
GO
/****** Object:  View [dbo].[vScheduleDetail]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vScheduleDetail]
AS
SELECT     TOP (100) PERCENT dbo.ScheduleDetail.ScheduleDetailId, dbo.ScheduleDetail.ScheduleTemplateiD, dbo.ScheduleDetail.FamilyId, dbo.ScheduleDetail.PersonId, dbo.ScheduleDetail.DateAdded, 
                      dbo.ScheduleDetail.DateLastActivity, dbo.ScheduleDetail.ICSData, dbo.ScheduleDetail.Swapped, dbo.ScheduleDetail.EType, dbo.ScheduleMaster.ScheduleMasterId, 
                      dbo.ScheduleMaster.Title AS ScheduleMaster_Title, dbo.SubEvent.SubEventId, dbo.ScheduleTemplate.Date, dbo.Event.Title AS SubEvent_Title, dbo.Event.Description, 
                      dbo.Family.LastName AS Family_LastName, dbo.SubEvent.ChildId, dbo.ScheduleMaster.EventId, dbo.Event.Class, dbo.Event.EType AS Event_Type, 
                      dbo.ScheduleMaster.Description AS ScheduleMaster_Description, dbo.Event.SeqNbr
FROM         dbo.ScheduleTemplate LEFT OUTER JOIN
                      dbo.Event RIGHT OUTER JOIN
                      dbo.SubEvent ON dbo.Event.EventId = dbo.SubEvent.ChildId ON dbo.ScheduleTemplate.SubEventId = dbo.SubEvent.SubEventId LEFT OUTER JOIN
                      dbo.ScheduleMaster ON dbo.ScheduleTemplate.ScheduleMasterId = dbo.ScheduleMaster.ScheduleMasterId RIGHT OUTER JOIN
                      dbo.ScheduleDetail LEFT OUTER JOIN
                      dbo.Family ON dbo.ScheduleDetail.FamilyId = dbo.Family.FamilyId ON dbo.ScheduleTemplate.ScheduleTemplateId = dbo.ScheduleDetail.ScheduleTemplateiD


GO
/****** Object:  View [dbo].[vLastScheduled]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vLastScheduled]
AS
SELECT     ScheduleDetailId, ScheduleTemplateiD, FamilyId, PersonId, DateAdded, DateLastActivity, ICSData, Swapped, EType, ScheduleMasterId, ScheduleMaster_Title, SubEventId, Date, SubEvent_Title, 
                      Description, Family_LastName, ChildId, EventId, Class, Event_Type, ScheduleMaster_Description
FROM         dbo.vScheduleDetail
WHERE     (Date =
                          (SELECT     MAX(Date) AS Expr1
                            FROM          dbo.vScheduleDetail AS vScheduleDetail_1
                            WHERE      (dbo.vScheduleDetail.FamilyId = FamilyId) AND (Swapped <> '1') AND (Event_Type <> '0')))


GO
/****** Object:  View [dbo].[vLastScheduledAll]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vLastScheduledAll]
AS
SELECT     TOP (100) PERCENT dbo.Family.FamilyId, dbo.Family.LastName, dbo.Family.Active, dbo.vLastScheduled.ScheduleMasterId, dbo.vLastScheduled.ScheduleMaster_Title, 
                      dbo.vLastScheduled.ScheduleMaster_Description, dbo.vLastScheduled.SubEvent_Title, dbo.vLastScheduled.Date, dbo.vLastScheduled.Event_Type
FROM         dbo.Family LEFT OUTER JOIN
                      dbo.vLastScheduled ON dbo.Family.FamilyId = dbo.vLastScheduled.FamilyId
WHERE     (dbo.Family.Active = '1') AND (dbo.Family.Visitor <> '1')
ORDER BY dbo.Family.LastName


GO
/****** Object:  View [dbo].[vAttendanceReport]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAttendanceReport]
AS
SELECT     TOP (100) PERCENT dbo.vAttendanceDtl.AttendanceDtlId, dbo.vAttendanceDtl.AttendanceHdrId, dbo.vAttendanceDtl.Date AS DateAttended, dbo.vAttendanceDtl.Time AS TimeAttended, 
                      dbo.vAttendanceDtl.PersonId, dbo.vPerson.CalcFirstName, dbo.vPerson.LastName, dbo.vAttendanceDtl.Class,
                          (SELECT     TOP (1) Code_Label
                            FROM          dbo.Value
                            WHERE      (dbo.vAttendanceDtl.Class = Code_Value) AND (DomainID = 115124) AND (Language_Id = 0)) AS ClassAttended, 
                      COALESCE ((CASE WHEN vperson_1.phonetype1 = '1' THEN vperson_1.phonenumber1 WHEN vperson_1.phonetype2 = '1' THEN vperson_1.phonenumber2 WHEN vperson_1.phonetype3 = '1' THEN
                       vperson_1.phonenumber3 END), ' ') AS Parent1MobileNumber, COALESCE (vPerson_1.PersonId, '0') AS Parent1PersonId, COALESCE (vPerson_1.CalcFirstName, ' ') AS Parent1FirstName, 
                      COALESCE (vPerson_1.LastName, ' ') AS Parent1LastName, 
                      COALESCE ((CASE WHEN vperson_2.phonetype1 = '1' THEN vperson_2.phonenumber1 WHEN vperson_2.phonetype2 = '1' THEN vperson_2.phonenumber2 WHEN vperson_2.phonetype3 = '1' THEN
                       vperson_2.phonenumber3 END), ' ') AS Parent2MobileNumber, COALESCE (vPerson_2.PersonId, '0') AS Parent2PersonId, COALESCE (vPerson_2.CalcFirstName, ' ') AS Parent2FirstName, 
                      COALESCE (vPerson_2.LastName, ' ') AS Parent2LastName, dbo.vAttendanceDtl.Visitor, dbo.vPerson.FamilyPosition, dbo.vPerson.PaidStaff, dbo.vPerson.Visitor AS PersonVisitor, 
                      dbo.vPerson.Active, dbo.vPerson.Class AS PersonClass, dbo.vAttendanceDtl.FamilyId
FROM         dbo.vAttendanceDtl LEFT OUTER JOIN
                      dbo.vPerson ON dbo.vAttendanceDtl.PersonId = dbo.vPerson.PersonId LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_1 ON vPerson_1.FamilyId = dbo.vAttendanceDtl.FamilyId AND vPerson_1.FamilyPosition = '1' LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_2 ON vPerson_2.FamilyId = dbo.vAttendanceDtl.FamilyId AND vPerson_2.FamilyPosition = '2'
ORDER BY dbo.vAttendanceDtl.Class, dbo.vPerson.LastName, dbo.vPerson.CalcFirstName
GO
/****** Object:  View [dbo].[vAttendanceReportDate]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAttendanceReportDate]
AS
SELECT DISTINCT TOP (100) PERCENT DateAttended
FROM        dbo.vAttendanceReport


GO
/****** Object:  View [dbo].[vEventFamilyPerson]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEventFamilyPerson]
AS
SELECT     dbo.EventFamilyPerson.EventFamilyPersonId, dbo.EventFamilyPerson.EventId, dbo.EventFamilyPerson.FamilyId, dbo.EventFamilyPerson.PersonId, 
                      dbo.EventFamilyPerson.Schedule, dbo.EventFamilyPerson.DateAdded, dbo.EventFamilyPerson.DateLastActivity, dbo.Event.Title, 
                      dbo.Family.LastName, dbo.Family.Active AS Family_Active, dbo.Family.Schedule AS Family_Schedule, dbo.Family.SpecialHandling, 
                      dbo.Family.SpecialHandlingNote, dbo.Event.Class1, dbo.Event.Class2, dbo.Event.Class3, dbo.Event.Class4, dbo.Event.Class5, dbo.Event.Class6, 
                      dbo.Event.FamilyPosition1, dbo.Event.FamilyPosition2, dbo.Event.FamilyPosition3, dbo.Event.FamilyPosition4, dbo.Event.FamilyPosition5, 
                      dbo.Event.FamilyPosition6
FROM         dbo.EventFamilyPerson INNER JOIN
                      dbo.Family ON dbo.EventFamilyPerson.FamilyId = dbo.Family.FamilyId LEFT OUTER JOIN
                      dbo.Event ON dbo.EventFamilyPerson.EventId = dbo.Event.EventId

GO
/****** Object:  View [dbo].[vScheduleTemplate]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleTemplate]
AS
SELECT     TOP (100) PERCENT dbo.ScheduleTemplate.ScheduleTemplateId, dbo.ScheduleTemplate.ScheduleMasterId, dbo.ScheduleTemplate.SubEventId, 
                      dbo.ScheduleTemplate.Date, dbo.ScheduleTemplate.Slots, dbo.ScheduleTemplate.SlotsTaken, dbo.ScheduleTemplate.Frozen, 
                      dbo.ScheduleTemplate.DateAdded, dbo.ScheduleTemplate.DateLastActivity, dbo.ScheduleMaster.EventId, dbo.ScheduleMaster.Title AS Schedule_Title, 
                      dbo.Event.Title AS Event_Title, Event_1.Title AS SubEvent_Title, Event_1.Description AS SubEvent_Description, dbo.SubEvent.ChildId, Event_1.Class, 
                      Event_1.SeqNbr
FROM         dbo.Event AS Event_1 RIGHT OUTER JOIN
                      dbo.SubEvent ON Event_1.EventId = dbo.SubEvent.ChildId RIGHT OUTER JOIN
                      dbo.ScheduleTemplate INNER JOIN
                      dbo.ScheduleMaster ON dbo.ScheduleTemplate.ScheduleMasterId = dbo.ScheduleMaster.ScheduleMasterId INNER JOIN
                      dbo.Event ON dbo.ScheduleMaster.EventId = dbo.Event.EventId ON dbo.SubEvent.SubEventId = dbo.ScheduleTemplate.SubEventId
ORDER BY dbo.ScheduleTemplate.Date, dbo.ScheduleTemplate.SubEventId

GO
/****** Object:  View [dbo].[vPersonFamilyAvail]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPersonFamilyAvail]
AS
SELECT     dbo.PersonFamilyAvail.PersonFamilyAvailId, dbo.PersonFamilyAvail.PersonId, dbo.PersonFamilyAvail.FamilyId, dbo.PersonFamilyAvail.ScheduleTemplateId, dbo.PersonFamilyAvail.Available, 
                      dbo.PersonFamilyAvail.DateAdded, dbo.PersonFamilyAvail.DateLastActivity, dbo.vScheduleTemplate.ScheduleMasterId, dbo.vScheduleTemplate.SubEventId, dbo.vScheduleTemplate.Date, 
                      dbo.Family.LastName, dbo.vScheduleTemplate.EventId, dbo.vEventFamilyPerson.Schedule
FROM         dbo.PersonFamilyAvail INNER JOIN
                      dbo.vScheduleTemplate ON dbo.PersonFamilyAvail.ScheduleTemplateId = dbo.vScheduleTemplate.ScheduleTemplateId INNER JOIN
                      dbo.Family ON dbo.PersonFamilyAvail.FamilyId = dbo.Family.FamilyId INNER JOIN
                      dbo.vEventFamilyPerson ON dbo.PersonFamilyAvail.FamilyId = dbo.vEventFamilyPerson.FamilyId AND dbo.vScheduleTemplate.EventId = dbo.vEventFamilyPerson.EventId


GO
/****** Object:  View [dbo].[vContactLog]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vContactLog]
AS
SELECT     dbo.ContactLog.ContactLogId, dbo.ContactLog.WhenSent, dbo.ContactLog.Type, dbo.ContactLog.Origin, dbo.ContactLog.PersonId, dbo.ContactLog.Address, dbo.ContactLog.SubjectHeader, 
                      dbo.ContactLog.Text, dbo.ContactLog.DateAdded, dbo.ContactLog.DateLastActivity, dbo.vFamilyPerson.Person_LastName, dbo.vFamilyPerson.FirstName, dbo.vFamilyPerson.Person_GoesByName, 
                      dbo.vFamilyPerson.Person_Active, dbo.vFamilyPerson.FamilyId, dbo.vFamilyPerson.Family_LastName, dbo.vFamilyPerson.Family_Active, dbo.vFamilyPerson.CalcFirstName
FROM         dbo.ContactLog LEFT OUTER JOIN
                      dbo.vFamilyPerson ON dbo.ContactLog.PersonId = dbo.vFamilyPerson.PersonId


GO
/****** Object:  View [dbo].[vCommFormat2]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCommFormat2]
AS
SELECT     dbo.ScheduleMaster.ScheduleMasterId, dbo.ScheduleDetail.FamilyId, dbo.vFamilyPerson.PersonId, dbo.ScheduleTemplate.Date, dbo.ScheduleMaster.Title AS Schedule_Title, 
                      dbo.Event.Title AS Event_Title, Event_1.StartTime, Event_1.StopTime, Event_1.Title AS SubEvent_Title, Event_1.Class AS SubEvent_Class, dbo.vFamilyPerson.Person_LastName, 
                      dbo.vFamilyPerson.FirstName, dbo.vFamilyPerson.FamilyPosition, dbo.vFamilyPerson.Person_Class, dbo.vFamilyPerson.Person_EmailAddress, dbo.vFamilyPerson.Person_PhoneNbr1, 
                      dbo.vFamilyPerson.Person_PhoneType1, dbo.vFamilyPerson.Person_PhoneNbr2, dbo.vFamilyPerson.Person_PhoneType2, dbo.vFamilyPerson.Person_PhoneNbr3, 
                      dbo.vFamilyPerson.Person_PhoneType3, dbo.vFamilyPerson.Person_MobileProvider, dbo.vFamilyPerson.Person_TextAllowed, dbo.vFamilyPerson.Person_Active, 
                      dbo.vFamilyPerson.Person_Schedule, dbo.vFamilyPerson.Person_GoesByName, dbo.vFamilyPerson.Person_Suffix, dbo.vFamilyPerson.Family_LastName, dbo.ScheduleDetail.ScheduleDetailId, 
                      dbo.ScheduleDetail.ScheduleTemplateiD, dbo.ScheduleTemplate.SubEventId, dbo.vFamilyPerson.SpecialHandling, dbo.vFamilyPerson.SpecialHandlingNote, dbo.vFamilyPerson.CalcFirstName, 
                      dbo.vFamilyPerson.Person_PaidStaff, Event_1.EType, dbo.ScheduleMaster.Description AS Schedule_Description, dbo.Event.Description AS Event_Description
FROM         dbo.ScheduleMaster INNER JOIN
                      dbo.Event ON dbo.ScheduleMaster.EventId = dbo.Event.EventId INNER JOIN
                      dbo.ScheduleTemplate ON dbo.ScheduleMaster.ScheduleMasterId = dbo.ScheduleTemplate.ScheduleMasterId INNER JOIN
                      dbo.ScheduleDetail ON dbo.ScheduleTemplate.ScheduleTemplateId = dbo.ScheduleDetail.ScheduleTemplateiD INNER JOIN
                      dbo.vFamilyPerson ON dbo.ScheduleDetail.FamilyId = dbo.vFamilyPerson.FamilyId INNER JOIN
                      dbo.SubEvent ON dbo.ScheduleTemplate.SubEventId = dbo.SubEvent.SubEventId INNER JOIN
                      dbo.Event AS Event_1 ON dbo.SubEvent.ChildId = Event_1.EventId
WHERE     (dbo.vFamilyPerson.Person_Active = '1') AND (dbo.vFamilyPerson.Person_Schedule = '1') AND (dbo.ScheduleDetail.Swapped <> '1')


GO
/****** Object:  View [dbo].[vCommFormat1]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCommFormat1]
AS
SELECT     dbo.vFamilyPerson.PersonId, dbo.vFamilyPerson.FamilyId, dbo.EventFamilyPerson.EventId, dbo.Event.Title AS Event_Title, dbo.vFamilyPerson.Person_LastName, dbo.vFamilyPerson.FirstName, 
                      dbo.vFamilyPerson.FamilyPosition, dbo.vFamilyPerson.Person_Class, dbo.vFamilyPerson.Person_EmailAddress, dbo.vFamilyPerson.Person_PhoneNbr1, dbo.vFamilyPerson.Person_PhoneType1, 
                      dbo.vFamilyPerson.Person_PhoneNbr2, dbo.vFamilyPerson.Person_PhoneType2, dbo.vFamilyPerson.Person_PhoneNbr3, dbo.vFamilyPerson.Person_PhoneType3, 
                      dbo.vFamilyPerson.Person_MobileProvider, dbo.vFamilyPerson.Person_TextAllowed, dbo.vFamilyPerson.Person_Active, dbo.vFamilyPerson.Person_Schedule, 
                      dbo.vFamilyPerson.Person_GoesByName, dbo.vFamilyPerson.Person_Suffix, dbo.vFamilyPerson.Family_LastName, dbo.vFamilyPerson.SpecialHandling, dbo.vFamilyPerson.SpecialHandlingNote,
                       dbo.vFamilyPerson.CalcFirstName, dbo.vFamilyPerson.Person_PaidStaff AS PaidStaff, dbo.Event.EType, dbo.Event.Description AS Event_Description
FROM         dbo.EventFamilyPerson INNER JOIN
                      dbo.vFamilyPerson ON dbo.EventFamilyPerson.FamilyId = dbo.vFamilyPerson.FamilyId INNER JOIN
                      dbo.Event ON dbo.EventFamilyPerson.EventId = dbo.Event.EventId


GO
/****** Object:  View [dbo].[vCommFormat3]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCommFormat3]
AS
SELECT     TOP (100) PERCENT dbo.ScheduleMaster.ScheduleMasterId, dbo.EventFamilyPerson.FamilyId, dbo.vFamilyPerson.PersonId, dbo.ScheduleMaster.EventId, 
                      dbo.ScheduleMaster.Title AS ScheduleMaster_Title, dbo.Event.Title AS Event_Title,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          dbo.vPersonFamilyAvail
                            WHERE      (ScheduleMasterId = dbo.ScheduleMaster.ScheduleMasterId) AND (Available = '1') AND (FamilyId = dbo.EventFamilyPerson.FamilyId)) AS PfAvailCount, 
                      dbo.vFamilyPerson.Family_LastName, dbo.vFamilyPerson.Person_LastName, dbo.vFamilyPerson.FirstName, dbo.vFamilyPerson.Person_GoesByName, dbo.vFamilyPerson.Person_Schedule, 
                      dbo.vFamilyPerson.FamilyPosition, dbo.vFamilyPerson.Person_EmailAddress, dbo.vFamilyPerson.Person_PhoneNbr1, dbo.vFamilyPerson.Person_PhoneType1, 
                      dbo.vFamilyPerson.Person_PhoneNbr2, dbo.vFamilyPerson.Person_PhoneType2, dbo.vFamilyPerson.Person_PhoneNbr3, dbo.vFamilyPerson.Person_PhoneType3, 
                      dbo.vFamilyPerson.Person_MobileProvider, dbo.vFamilyPerson.Person_TextAllowed, dbo.ScheduleMaster.StartDate, dbo.ScheduleMaster.EndDate, dbo.Event.StartTime, dbo.Event.StopTime, 
                      dbo.vFamilyPerson.Person_Class, dbo.vFamilyPerson.Person_Suffix, dbo.vFamilyPerson.Person_Active, dbo.vFamilyPerson.SpecialHandling, dbo.vFamilyPerson.SpecialHandlingNote, 
                      dbo.vFamilyPerson.CalcFirstName, dbo.vFamilyPerson.Person_PaidStaff, dbo.Event.EType, dbo.ScheduleMaster.Description AS ScheduleMaster_Description, 
                      dbo.Event.Description AS Event_Description
FROM         dbo.EventFamilyPerson INNER JOIN
                      dbo.ScheduleMaster ON dbo.EventFamilyPerson.EventId = dbo.ScheduleMaster.EventId INNER JOIN
                      dbo.vFamilyPerson ON dbo.EventFamilyPerson.FamilyId = dbo.vFamilyPerson.FamilyId INNER JOIN
                      dbo.Event ON dbo.EventFamilyPerson.EventId = dbo.Event.EventId
WHERE     (dbo.vFamilyPerson.Person_Schedule = '1') AND (dbo.EventFamilyPerson.Schedule = '1')
ORDER BY dbo.vFamilyPerson.Family_LastName, dbo.vFamilyPerson.Person_LastName


GO
/****** Object:  View [dbo].[vFamilyReport]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFamilyReport]
AS
SELECT     dbo.Family.FamilyId, dbo.Family.LastName, dbo.Family.ScheduleTogether, dbo.Family.Active, dbo.Family.DateAdded, dbo.Family.DateLastActivity, dbo.Family.Note1, dbo.Family.Schedule, 
                      dbo.Family.SpecialHandling, dbo.Family.SpecialHandlingNote, dbo.Family.Visitor, (CASE WHEN vPerson_1.CalcFirstName <> '' AND 
                      vperson_2.calcfirstname <> '' THEN vperson_1.calcfirstname + ' & ' + vperson_2.calcfirstname WHEN vPerson_1.CalcFirstName <> '' THEN vperson_1.calcfirstname ELSE vperson_2.calcfirstname END)
                       AS ParentNames, vPerson_1.CalcFirstName AS Parent1_CalcFirstName, vPerson_2.CalcFirstName AS Parent2_CalcFirstName, COALESCE (vPerson_1.PersonId, '0') AS Parent1_PersonId, 
                      COALESCE (vPerson_2.PersonId, '0') AS Parent2_PersonId, vPerson_1.PaidStaff AS Parent1_PaidStaff, vPerson_2.PaidStaff AS Parent2_PaidStaff
FROM         dbo.Family LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_1 ON vPerson_1.FamilyId = dbo.Family.FamilyId AND vPerson_1.FamilyPosition = '1' LEFT OUTER JOIN
                      dbo.vPerson AS vPerson_2 ON vPerson_2.FamilyId = dbo.Family.FamilyId AND vPerson_2.FamilyPosition = '2'
GO
/****** Object:  View [dbo].[vPersonFamily]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPersonFamily]
AS
SELECT     dbo.Person.PersonId, dbo.Person.FirstName, dbo.Person.LastName, dbo.Person.GoesByName, dbo.Person.FamilyId, dbo.Person.PhoneNumber1, dbo.Person.PhoneType1, 
                      dbo.Person.EmailAddress, dbo.Person.PhoneNumber2, dbo.Person.PhoneType2, dbo.Person.PhoneNumber3, dbo.Person.PhoneType3, dbo.Person.MobileProvider, dbo.Person.Address1, 
                      dbo.Person.Address2, dbo.Person.Address3, dbo.Person.City, dbo.Person.StateProvince, dbo.Person.ZipPostalCode, dbo.Person.CountryCode, dbo.Person.County, dbo.Person.FamilyPosition, 
                      dbo.Person.BirthDate, dbo.Person.Class, dbo.Person.Title, dbo.Person.PrimaryContactMethod, dbo.Person.TextAllowed, dbo.Person.Note1, dbo.Person.Note2, dbo.Person.FollowupInd, 
                      dbo.Person.FollowupNote, dbo.Person.Active, dbo.Person.PaidStaff, dbo.Person.WebAccessAllowed, dbo.Person.WebLogonName, dbo.Person.WebPassword, dbo.Person.DateAdded, 
                      dbo.Person.DateLastActivity, dbo.Person.Schedule, dbo.Person.Suffix, dbo.Person.RosterNotes, dbo.Person.RosterReview, dbo.Person.PottyTraining, dbo.Person.Visitor, 
                      CASE WHEN person.goesbyname <> '' THEN person.goesbyname ELSE person.firstname END AS CalcFirstName, dbo.Family.LastName AS Family_LastName, dbo.Family.ScheduleTogether, 
                      dbo.Family.Active AS Family_Active, dbo.Family.DateAdded AS Family_DateAdded, dbo.Family.DateLastActivity AS Family_DateLastActivity, dbo.Family.Note1 AS Family_Note1, 
                      dbo.Family.Schedule AS Family_Schedule, dbo.Family.SpecialHandling, dbo.Family.SpecialHandlingNote, dbo.Family.Visitor AS Family_Visitor
FROM         dbo.Person INNER JOIN
                      dbo.Family ON dbo.Person.FamilyId = dbo.Family.FamilyId
GO
/****** Object:  View [dbo].[vLastAttendedReport]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLastAttendedReport]
AS
SELECT DISTINCT dbo.vAttendanceDtl.AttendanceDtlId, dbo.vAttendanceDtl.AttendanceHdrId, dbo.vAttendanceDtl.Class AS AttendanceClass,
                          (SELECT     TOP (1) Code_Label
                            FROM          dbo.Value
                            WHERE      (dbo.vAttendanceDtl.Class = Code_Value) AND (DomainID = 115124) AND (Language_Id = 0)) AS ClassAttended, dbo.vAttendanceDtl.Date AS DateAttended, dbo.vAttendanceDtl.PersonId, 
                      dbo.vAttendanceDtl.Note, dbo.vAttendanceDtl.Visitor, dbo.vAttendanceDtl.Person_LastName, dbo.vAttendanceDtl.CalcFirstName, dbo.vAttendanceDtl.FamilyPosition, 
                      dbo.vAttendanceDtl.Person_Class, dbo.vAttendanceDtl.Person_Visitor, dbo.vPersonFamily.Active AS Person_Active, dbo.vPersonFamily.PaidStaff AS Person_PaidStaff
FROM         dbo.vAttendanceDtl INNER JOIN
                      dbo.vPersonFamily ON dbo.vAttendanceDtl.PersonId = dbo.vPersonFamily.PersonId
WHERE     (dbo.vAttendanceDtl.Date + dbo.vAttendanceDtl.Time =
                          (SELECT     MAX(Date + Time) AS Expr1
                            FROM          dbo.vAttendanceDtl AS vAttendanceDtl_1
                            WHERE      (vattendancedtl.personid = PersonId))) AND (dbo.vAttendanceDtl.Present = '1')
GO
/****** Object:  View [dbo].[vRosterReport]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRosterReport]
AS
SELECT     TOP (100) PERCENT dbo.vPersonFamily.PersonId, dbo.vPersonFamily.CalcFirstName, dbo.vPersonFamily.LastName, dbo.vPersonFamily.Class AS PersonClass,
                          (SELECT     TOP (1) Code_Label
                            FROM          dbo.Value
                            WHERE      (dbo.vPersonFamily.Class = Code_Value) AND (DomainID = 115124) AND (Language_Id = 0)) AS ClassAttended, COALESCE (vPerson_1.PersonId, '0') AS Parent1PersonId, 
                      vPerson_1.CalcFirstName AS Parent1FirstName, vPerson_1.LastName AS Parent1LastName, 
                      COALESCE ((CASE WHEN vperson_1.phonetype1 = '1' THEN vperson_1.phonenumber1 WHEN vperson_1.phonetype2 = '1' THEN vperson_1.phonenumber2 WHEN vperson_1.phonetype3 = '1' THEN
                       vperson_1.phonenumber3 END), ' ') AS Parent1MobileNumber, COALESCE (vPerson_2.PersonId, '0') AS Parent2PersonId, vPerson_2.CalcFirstName AS Parent2FirstName, 
                      vPerson_2.LastName AS Parent2LastName, 
                      COALESCE ((CASE WHEN vperson_2.phonetype1 = '1' THEN vperson_2.phonenumber1 WHEN vperson_2.phonetype2 = '1' THEN vperson_2.phonenumber2 WHEN vperson_2.phonetype3 = '1' THEN
                       vperson_2.phonenumber3 END), ' ') AS Parent2MobileNumber, dbo.vPersonFamily.FamilyPosition, dbo.vPersonFamily.PaidStaff, dbo.vPersonFamily.Visitor, dbo.vPersonFamily.Active, 
                      dbo.vPersonFamily.RosterReview, dbo.vPersonFamily.RosterNotes, dbo.vPersonFamily.PottyTraining, dbo.vPersonFamily.Note1, dbo.vPersonFamily.Note2, dbo.vPersonFamily.BirthDate, 
                      dbo.vPersonFamily.Family_Note1, dbo.vPersonFamily.SpecialHandling, dbo.vPersonFamily.SpecialHandlingNote
FROM         dbo.vPersonFamily LEFT OUTER JOIN
                      dbo.vPersonFamily AS vPerson_1 ON vPerson_1.FamilyId = dbo.vPersonFamily.FamilyId AND vPerson_1.FamilyPosition = '1' LEFT OUTER JOIN
                      dbo.vPersonFamily AS vPerson_2 ON vPerson_2.FamilyId = dbo.vPersonFamily.FamilyId AND vPerson_2.FamilyPosition = '2'
ORDER BY PersonClass, dbo.vPersonFamily.LastName, dbo.vPersonFamily.CalcFirstName
GO
/****** Object:  View [dbo].[owvElementSecurity]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvElementSecurity] AS
SELECT  owUserRole.UserId, owElementSecurity.ObjectID, owElementSecurity.ElementID, owElementSecurity.Privilege
FROM    owUserRole INNER JOIN owElementSecurity ON owUserRole.RoleId = owElementSecurity.RoleID
WHERE   owElementSecurity.Privilege <> '4'

GO
/****** Object:  View [dbo].[owvPreference]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvPreference] AS
SELECT owPreference.*, owPrefObject.PrefName, owPrefObject.PrefType
FROM   owPreference INNER JOIN owPrefObject ON owPreference.PrefId = owPrefObject.PrefId

GO
/****** Object:  View [dbo].[owvUser]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[owvUser] AS
SELECT     UserId, Password, '' AS UserName, '' AS UserEmail, '' AS PhoneNumber, '' AS PhoneCarrier
FROM         dbo.owUser

GO
/****** Object:  View [dbo].[PlusFlexObject]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Select * INTO PlusFlexObject FROM xan2000.amapsdevmpt.plusflexobject
--insert into PlusFlexObject select * from metadictionary.plusflexobject where record_name like 'ow%'
CREATE VIEW [dbo].[PlusFlexObject] AS 
SELECT     RECORD_NAME, ABBREVIATION, SOURCE_MEMBER, RESOURCE, NOTES, Server
FROM         xan2000.DataDictionary.dbo.FlexObject


GO
/****** Object:  View [dbo].[vAttendanceHdr]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAttendanceHdr]
AS
SELECT     dbo.AttendanceHdr.AttendanceHdrId, dbo.AttendanceHdr.EventId, dbo.AttendanceHdr.Date, dbo.AttendanceHdr.Time1, dbo.AttendanceHdr.Time2, 
                      dbo.AttendanceHdr.Time3, dbo.AttendanceHdr.Time4, dbo.AttendanceHdr.Time5, dbo.AttendanceHdr.DateAdded, dbo.AttendanceHdr.DateLastActivity, 
                      dbo.AttendanceHdr.CoEventId1, dbo.AttendanceHdr.CoEventId2, dbo.AttendanceHdr.CoEventId3, dbo.AttendanceHdr.CoEventId4, 
                      dbo.AttendanceHdr.CoEventId5, dbo.Event.Title, dbo.Event.Description, Event_1.Title AS CoEvent1Title, Event_1.Description AS CoEvent1Description, 
                      Event_2.Title AS CoEvent2Title, Event_2.Description AS CoEvent2Description, Event_3.Title AS CoEvent3Title, 
                      Event_3.Description AS CoEvent3Description, Event_4.Title AS CoEvent4Title, Event_4.Description AS CoEvent4Description, 
                      Event_5.Title AS CoEvent5Title, Event_5.Description AS CoEvent5Description
FROM         dbo.AttendanceHdr INNER JOIN
                      dbo.Event ON dbo.AttendanceHdr.EventId = dbo.Event.EventId LEFT OUTER JOIN
                      dbo.Event AS Event_5 ON dbo.AttendanceHdr.CoEventId5 = Event_5.EventId LEFT OUTER JOIN
                      dbo.Event AS Event_4 ON dbo.AttendanceHdr.CoEventId4 = Event_4.EventId LEFT OUTER JOIN
                      dbo.Event AS Event_3 ON dbo.AttendanceHdr.CoEventId3 = Event_3.EventId LEFT OUTER JOIN
                      dbo.Event AS Event_2 ON dbo.AttendanceHdr.CoEventId2 = Event_2.EventId LEFT OUTER JOIN
                      dbo.Event AS Event_1 ON dbo.AttendanceHdr.CoEventId1 = Event_1.EventId


GO
/****** Object:  View [dbo].[vMissingMobileProviderActive]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMissingMobileProviderActive]
AS
SELECT     FirstName, LastName, GoesByName, PhoneType1, PhoneNumber1, MobileProvider, FamilyPosition, Active
FROM         dbo.Person
WHERE     (PhoneType1 = '1') AND (MobileProvider = ' ') AND (FamilyPosition IN ('1', '2')) AND (Active = '1')

GO
/****** Object:  View [dbo].[vPersonwithoutClass]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPersonwithoutClass]
AS
SELECT     PersonId, FirstName, LastName, GoesByName, FamilyPosition, Class
FROM         dbo.Person
WHERE     (FamilyPosition = '3') AND (Class = '')

GO
/****** Object:  View [dbo].[vRoster1]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRoster1]
AS
SELECT     TOP (100) PERCENT p1.RosterReview, CASE WHEN (p1.goesbyname <> ' ') THEN rtrim(p1.goesbyname) ELSE rtrim(p1.FirstName) END AS fname, 
                      p1.LastName, CASE WHEN (p2.goesbyname <> ' ') THEN rtrim(p2.goesbyname) ELSE rtrim(p2.FirstName) 
                      END + ' (' + RTRIM(CASE WHEN p2.phonetype1 = '1' THEN p2.PhoneNumber1 WHEN p2.phonetype2 = '1' THEN p2.PhoneNumber2 WHEN p2.phonetype3
                       = '1' THEN p2.PhoneNumber3 ELSE 'NOT Specified ' END) + ')' + ', ' + CASE WHEN (p3.goesbyname <> ' ') THEN rtrim(p3.goesbyname) 
                      ELSE rtrim(p3.FirstName) 
                      END + ' (' + RTRIM(CASE WHEN p3.phonetype1 = '1' THEN p3.PhoneNumber1 WHEN p3.phonetype2 = '1' THEN p3.PhoneNumber2 WHEN p3.phonetype3
                       = '1' THEN p3.PhoneNumber3 ELSE 'NOT Specified ' END) + ')' AS Parents, p1.RosterNotes, p1.PottyTraining
FROM         dbo.Person AS p1 LEFT OUTER JOIN
                      dbo.Person AS p2 ON p1.FamilyId = p2.FamilyId LEFT OUTER JOIN
                      dbo.Person AS p3 ON p1.FamilyId = p3.FamilyId
WHERE     (p1.Class = 'CB') AND (p1.Active = '1') AND (p2.FamilyPosition = '1') AND (p3.FamilyPosition = '2')
UNION
SELECT     TOP (100) PERCENT p1.RosterReview, CASE WHEN (p1.goesbyname <> ' ') THEN rtrim(p1.goesbyname) ELSE rtrim(p1.FirstName) END AS fname, 
                      p1.LastName, CASE WHEN (p2.goesbyname <> ' ') THEN rtrim(p2.goesbyname) ELSE rtrim(p2.FirstName) 
                      END + ' (' + RTRIM(CASE WHEN p2.phonetype1 = '1' THEN p2.PhoneNumber1 WHEN p2.phonetype2 = '1' THEN p2.PhoneNumber2 WHEN p2.phonetype3
                       = '1' THEN p2.PhoneNumber3 ELSE 'NOT Specified ' END) + ')' AS Parents, p1.RosterNotes, p1.PottyTraining
FROM         dbo.Person AS p1 LEFT OUTER JOIN
                      dbo.Person AS p2 ON p1.FamilyId = p2.FamilyId
WHERE     (p1.Class = 'CB') AND (p1.Active = '1') AND (p2.FamilyPosition = '1') AND (p1.FamilyId NOT IN
                          (SELECT     p1.FamilyId
                            FROM          dbo.Person AS p1 LEFT OUTER JOIN
                                                   dbo.Person AS p2 ON p1.FamilyId = p2.FamilyId LEFT OUTER JOIN
                                                   dbo.Person AS p3 ON p1.FamilyId = p3.FamilyId
                            WHERE      (p1.Class = 'CB') AND (p1.Active = '1') AND (p2.FamilyPosition = '1') AND (p3.FamilyPosition = '2')))
UNION
SELECT     TOP (100) PERCENT p1.RosterReview, CASE WHEN (p1.goesbyname <> ' ') THEN rtrim(p1.goesbyname) ELSE rtrim(p1.FirstName) END AS fname, 
                      p1.LastName, CASE WHEN (p2.goesbyname <> ' ') THEN rtrim(p2.goesbyname) ELSE rtrim(p2.FirstName) 
                      END + ' (' + RTRIM(CASE WHEN p2.phonetype1 = '1' THEN p2.PhoneNumber1 WHEN p2.phonetype2 = '1' THEN p2.PhoneNumber2 WHEN p2.phonetype3
                       = '1' THEN p2.PhoneNumber3 ELSE 'NOT Specified ' END) + ')' AS Parents, p1.RosterNotes, p1.PottyTraining
FROM         dbo.Person AS p1 LEFT OUTER JOIN
                      dbo.Person AS p2 ON p1.FamilyId = p2.FamilyId
WHERE     (p1.Class = 'CB') AND (p1.Active = '1') AND (p2.FamilyPosition = '2') AND (p1.FamilyId NOT IN
                          (SELECT     p1.FamilyId
                            FROM          dbo.Person AS p1 LEFT OUTER JOIN
                                                   dbo.Person AS p2 ON p1.FamilyId = p2.FamilyId LEFT OUTER JOIN
                                                   dbo.Person AS p3 ON p1.FamilyId = p3.FamilyId
                            WHERE      (p1.Class = 'CB') AND (p1.Active = '1') AND (p2.FamilyPosition = '1') AND (p3.FamilyPosition = '2')))
ORDER BY fname

GO
/****** Object:  View [dbo].[vSubEvent]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSubEvent]
AS
WITH EventExplosion([SubEventId], [ParentId], [ChildId], EventLevel, TopID) AS (SELECT     dbo.SubEvent.SubEventId, dbo.SubEvent.ParentId, 
                                                                                                                                                                                                   dbo.SubEvent.ChildId, 1 AS EvevtLevel, dbo.Event.EventId
                                                                                                                                                                             FROM         dbo.SubEvent INNER JOIN
                                                                                                                                                                                                   dbo.Event ON dbo.SubEvent.ParentId = dbo.Event.EventId AND 
                                                                                                                                                                                                   dbo.Event.TopLevel = 'Y'
                                                                                                                                                                             UNION ALL
                                                                                                                                                                             SELECT     Expl.SubEventId, Expl.ParentId, Expl.ChildId, 
                                                                                                                                                                                                   Eplx.EventLevel + 1 AS Expr1, Eplx.TopID
                                                                                                                                                                             FROM         dbo.SubEvent AS Expl INNER JOIN
                                                                                                                                                                                                   EventExplosion AS Eplx ON Expl.ParentId = Eplx.[ChildId])
    SELECT     EventExplosion_1.[SubEventId], EventExplosion_1.[ParentId], EventExplosion_1.[ChildId], EventExplosion_1.EventLevel, EventExplosion_1.TopID, 
                            Event_2.Title, Event_2.Description, Event_2.StartTime, Event_2.StopTime, Event_2.Slots, Event_2.TopLevel, Event_2.Active, Event_2.SeqNbr, 
                            Event_2.Class
     FROM         EventExplosion AS EventExplosion_1 INNER JOIN
                            dbo.Event AS Event_2 ON EventExplosion_1.[ChildId] = Event_2.EventId
UNION
SELECT     EventId +
                          (SELECT     (MAX(SubEventId) + 1000) AS Expr1
                            FROM          dbo.SubEvent AS SubEvent_1) AS SubEventId, 0 AS ParentId, EventId AS ChildId, 0 AS EventLevel, EventId AS TopId, Title, Description, 
                      StartTime, StopTime, Slots, TopLevel, Active, SeqNbr, Class
FROM         dbo.Event AS Event_1
WHERE     (TopLevel = 'Y')



GO
/****** Object:  View [dbo].[vwAuditColumn]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: vwAuditColumn                                          */
/*==============================================================*/
CREATE VIEW [dbo].[vwAuditColumn]
AS
SELECT DISTINCT dbo.AuditTable.TableName, dbo.AuditColumn.ColumnName
        FROM dbo.AuditTable INNER JOIN dbo.AuditColumn ON dbo.AuditTable.AuditSeq = dbo.AuditColumn.AuditSeq

GO
/****** Object:  View [dbo].[vwAuditDate]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: vwAuditDate                                            */
/*==============================================================*/
CREATE VIEW [dbo].[vwAuditDate]
AS
SELECT MIN(ActivityDate) AS MinDate
       FROM dbo.AuditTransaction

GO
/****** Object:  View [dbo].[vwAudits]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwAudits]
AS
SELECT     dbo.AuditTransaction.AuditSeq, dbo.AuditTransaction.UserId, dbo.AuditTransaction.SystemUser, dbo.AuditTransaction.ActivityDate, 
                      dbo.AuditTable.TableName, dbo.AuditTable.TranCode, dbo.AuditTable.Key1, dbo.AuditTable.Key2, dbo.AuditTable.Key3, dbo.AuditTable.Key4, 
                      dbo.AuditTable.Key5, dbo.AuditColumn.ColumnName, dbo.AuditColumn.ColumnValue
FROM         dbo.AuditTransaction INNER JOIN
                      dbo.AuditTable ON dbo.AuditTransaction.AuditSeq = dbo.AuditTable.AuditSeq LEFT OUTER JOIN
                      dbo.AuditColumn ON dbo.AuditTable.AuditSeq = dbo.AuditColumn.AuditSeq

GO
/****** Object:  View [dbo].[vwAuditSysUser]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: vwAuditSysUser                                         */
/*==============================================================*/
CREATE VIEW [dbo].[vwAuditSysUser]
AS
SELECT DISTINCT SystemUser
        FROM dbo.AuditTransaction

GO
/****** Object:  View [dbo].[vwAuditTable]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: vwAuditTable                                           */
/*==============================================================*/
CREATE VIEW [dbo].[vwAuditTable]
AS
SELECT DISTINCT TableName
        FROM  dbo.AuditTable

GO
/****** Object:  View [dbo].[vwAuditUser]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: vwAuditUser                                            */
/*==============================================================*/
CREATE VIEW [dbo].[vwAuditUser]
AS
SELECT DISTINCT UserId
        FROM dbo.AuditTransaction

GO
/****** Object:  View [dbo].[vwErrorMessage]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwErrorMessage]
AS
SELECT   Errors_Help.Error_Source, Errors_Help.Error_Level, Errors_Help.Error_Code, Errors_Help.HelpID, Errors_Help.Help_File, 
         Errors_Help.More_Info, Errors_Help.Literal_id, Errors_Text.Error_Text, Errors_Text.LANGUAGE_ID
FROM     Errors_Help, Errors_text WHERE Errors_Help.Literal_id = Errors_Text.LITERAL_ID


GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[AuditAddNoData]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AuditAddNoData]
(@ActivityDateC char(23),
@TableName char(30),
@Key1 varchar(50),
@Key2 varchar(50) = NULL,
@Key3 varchar(50) = NULL,
@Key4 varchar(50) = NULL,
@Key5 varchar(50) = NULL,
@User as varchar(256)) 
 AS
 Declare @ActivityDate datetime
 Declare @AuditSeq int	
 select @ActivityDate = convert(datetime, @ActivityDateC)
 select @AuditSeq = AuditSeq from audittransaction where [SystemUser] =  @User and ActivityDate = @ActivityDate
 if not @AuditSeq is null
 begin
     insert into AuditTable (AuditSeq, TableName, TranCode, Key1, key2, key3, key4, key5) values(@AuditSeq, @TableName, 'I', @Key1, @Key2, @Key3, @Key4, @Key5)
 end

GO
/****** Object:  StoredProcedure [dbo].[AuditDelete]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AuditDelete]
(@ActivityDateC char(23),
@TableName char(30),
@Key1 varchar(50),
@Key2 varchar(50) = NULL,
@Key3 varchar(50) = NULL,
@Key4 varchar(50) = NULL,
@Key5 varchar(50) = NULL)
 AS
 Declare @User varchar(256)
 Declare @ActivityDate datetime
 Declare @AuditSeq int	
 select @User = system_user
 select @ActivityDate = convert(datetime, @ActivityDateC)
 select @AuditSeq = AuditSeq from audittransaction where [SystemUser] =  @User and ActivityDate = @ActivityDate
 if not @AuditSeq is null
 begin
     insert into AuditTable (AuditSeq, TableName, TranCode, Key1, key2, key3, key4, key5) values(@AuditSeq, @TableName, 'D', @Key1, @Key2, @Key3, @Key4, @Key5)
 end

GO
/****** Object:  StoredProcedure [dbo].[AuditElement]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* Procedure : Audit Element                                    */
/*==============================================================*/
CREATE PROCEDURE [dbo].[AuditElement]
@ActivityDateC char(23),
@TableName sysname,
@FieldName varchar(30),
@FieldValue varchar(1028),
@Type char(1),
@Key1 varchar(50),
@Key2 varchar(50),
@Key3 varchar(50),
@Key4 varchar(50),
@Key5 varchar(50)
AS

declare @AuditSeq int,
@AuditSeqTbl int,
@ActivityDate datetime,
@UserName varchar(256)
SET NOCOUNT ON

select @UserName = system_user

if @Type <> 'D'
begin
  select @ActivityDate = @ActivityDateC
  select @AuditSeq = AuditSeq from audittransaction where [SystemUser] =  @UserName and ActivityDate = @ActivityDate
  if not @AuditSeq is null
  begin
	select @AuditSeqTbl = AuditSeq from audittable where AuditSeq = @AuditSeq
	if @AuditSeqTbl is null
	begin	
        insert into audittable (AuditSeq, TableName, TranCode, KEY1, KEY2, KEY3, KEY4, KEY5) values(@AuditSeq, @TableName, @Type, @Key1, @Key2, @Key3, @Key4, @Key5)
    end
    insert AuditColumn (AuditSeq, ColumnName, ColumnValue) values(@AuditSeq, @FieldName, @FieldValue)
  end
end

GO
/****** Object:  StoredProcedure [dbo].[AuditTrans]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* Procedure : Audit Transaction                                */
/*==============================================================*/
CREATE PROCEDURE [dbo].[AuditTrans]
@PlusUser char(15),  
@ActivityDateC char(23) OUTPUT
AS
	Declare @User varchar(256)
        Declare @ActivityDate datetime
	select @User = system_user
	select @ActivityDate = getdate()
	insert into audittransaction (UserId, [SystemUser], ActivityDate) values(@PlusUser, @User, @ActivityDate)
        select @ActivityDateC = convert(char(23), @ActivityDate, 121)

GO
/****** Object:  StoredProcedure [dbo].[SequenceIncrement]    Script Date: 11/4/2016 11:36:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SequenceIncrement] 
(@TableName       char(50),
 @SequenceNbr int OUTPUT
)
AS
	DECLARE @Error int
	SET @Error = 0

	select @SequenceNbr = LAST_USED_ID + 1  from Sequence_Tbl where SQL_TABLE = @Tablename

	IF @SequenceNbr IS NULL
	   BEGIN
		insert into Sequence_Tbl values( @Tablename, 1)
		set @SequenceNbr = 1
	    END 
	ELSE
		update Sequence_Tbl set LAST_USED_ID = @SequenceNbr where SQL_TABLE = @Tablename

	RETURN @Error

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AttendanceDtl"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AttendanceHdr"
            Begin Extent = 
               Top = 25
               Left = 305
               Bottom = 133
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 25
               Left = 556
               Bottom = 133
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vFamilyPerson"
            Begin Extent = 
               Top = 208
               Left = 17
               Bottom = 316
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 24
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1830
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceDtl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceDtl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceDtl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AttendanceHdr"
            Begin Extent = 
               Top = 184
               Left = 42
               Bottom = 292
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 3
               Left = 12
               Bottom = 111
               Right = 171
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Event_1"
            Begin Extent = 
               Top = 5
               Left = 195
               Bottom = 113
               Right = 354
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event_2"
            Begin Extent = 
               Top = 7
               Left = 372
               Bottom = 115
               Right = 531
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event_3"
            Begin Extent = 
               Top = 7
               Left = 556
               Bottom = 115
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event_4"
            Begin Extent = 
               Top = 126
               Left = 565
               Bottom = 234
               Right = 724
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event_5"
            Begin Extent = 
               Top = 248
               Left = 570
               Bottom = 356
               Right = 729
            End
            DisplayFlags = 280' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceHdr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2880
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1560
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceHdr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceHdr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vAttendanceDtl"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "vPerson"
            Begin Extent = 
               Top = 137
               Left = 259
               Bottom = 257
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 21
         End
         Begin Table = "vPerson_1"
            Begin Extent = 
               Top = 6
               Left = 508
               Bottom = 126
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "vPerson_2"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 126
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin Criteri' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'aPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 3915
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAttendanceReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EventFamilyPerson"
            Begin Extent = 
               Top = 13
               Left = 0
               Bottom = 121
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vFamilyPerson"
            Begin Extent = 
               Top = 175
               Left = 245
               Bottom = 283
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 114
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
         Width = 284
         Width = 1500
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ScheduleMaster"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 114
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduleTemplate"
            Begin Extent = 
               Top = 151
               Left = 264
               Bottom = 259
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduleDetail"
            Begin Extent = 
               Top = 6
               Left = 449
               Bottom = 114
               Right = 625
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "vFamilyPerson"
            Begin Extent = 
               Top = 165
               Left = 490
               Bottom = 273
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "SubEvent"
            Begin Extent = 
               Top = 264
               Left = 230
               Bottom = 357
               Right = 381
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event_1"
            Begin Extent = 
               Top = 192
               Left = 33
               Bottom = 300
               Right = 192
            End
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         DisplayFlags = 280
            TopColumn = 23
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
         Width = 284
         Width = 1500
         Width = 2910
         Width = 2805
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1905
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EventFamilyPerson"
            Begin Extent = 
               Top = 12
               Left = 250
               Bottom = 120
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ScheduleMaster"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "vFamilyPerson"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 114
               Right = 696
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2475
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCommFormat3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ContactLog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "vFamilyPerson"
            Begin Extent = 
               Top = 6
               Left = 235
               Bottom = 114
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 28
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vContactLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vContactLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EventFamilyPerson"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Family"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 114
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 186
               Left = 214
               Bottom = 294
               Right = 373
            End
            DisplayFlags = 280
            TopColumn = 20
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 21
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1800
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vEventFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vEventFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vEventFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Family"
            Begin Extent = 
               Top = 139
               Left = 32
               Bottom = 247
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "Person"
            Begin Extent = 
               Top = 140
               Left = 275
               Bottom = 248
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 27
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 32
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5190
         Alias = 1950
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFamilyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Family"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "vPerson_1"
            Begin Extent = 
               Top = 140
               Left = 302
               Bottom = 260
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "vPerson_2"
            Begin Extent = 
               Top = 82
               Left = 839
               Bottom = 202
               Right = 1038
            End
            DisplayFlags = 280
            TopColumn = 33
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFamilyReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vFamilyReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vAttendanceDtl"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vPersonFamily"
            Begin Extent = 
               Top = 6
               Left = 271
               Bottom = 126
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 39
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 84
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastAttendedReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastAttendedReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastAttendedReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vScheduleDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 241
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastScheduled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastScheduled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Family"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "vLastScheduled"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 126
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastScheduledAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLastScheduledAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Person"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 30
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMissingMobileProviderActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMissingMobileProviderActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Person"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 40
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Person"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 231
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 33
         End
         Begin Table = "Family"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 228
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 56
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamily'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2970
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamily'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamily'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PersonFamilyAvail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Family"
            Begin Extent = 
               Top = 154
               Left = 95
               Bottom = 274
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vScheduleTemplate"
            Begin Extent = 
               Top = 6
               Left = 253
               Bottom = 126
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "vEventFamilyPerson"
            Begin Extent = 
               Top = 106
               Left = 500
               Bottom = 226
               Right = 690
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamilyAvail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamilyAvail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonFamilyAvail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Person"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 21
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonwithoutClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPersonwithoutClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1155
         Width = 4410
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vRoster1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vRoster1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vPersonFamily"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 51
         End
         Begin Table = "vPerson_1"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 126
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vPerson_2"
            Begin Extent = 
               Top = 6
               Left = 522
               Bottom = 126
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 27
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1950
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         Sor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vRosterReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'tType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vRosterReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vRosterReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -108
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ScheduleTemplate"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 114
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 213
               Left = 420
               Bottom = 321
               Right = 579
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "SubEvent"
            Begin Extent = 
               Top = 173
               Left = 50
               Bottom = 266
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduleMaster"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 114
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "ScheduleDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Family"
            Begin Extent = 
               Top = 143
               Left = 574
               Bottom = 251
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3750
         Alias = 2505
         Table = 1860
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Event_1"
            Begin Extent = 
               Top = 126
               Left = 467
               Bottom = 234
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "SubEvent"
            Begin Extent = 
               Top = 234
               Left = 467
               Bottom = 327
               Right = 618
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduleTemplate"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 318
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ScheduleMaster"
            Begin Extent = 
               Top = 6
               Left = 253
               Bottom = 320
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Event"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 126
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleTemplate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2265
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleTemplate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vScheduleTemplate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSubEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSubEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vAttendanceDtl"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vPerson"
            Begin Extent = 
               Top = 136
               Left = 2
               Bottom = 256
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "vPerson_1"
            Begin Extent = 
               Top = 204
               Left = 269
               Bottom = 312
               Right = 459
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vPerson_2"
            Begin Extent = 
               Top = 67
               Left = 530
               Bottom = 175
               Right = 720
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 21
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2355
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitorAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Alias = 3345
         Table = 2160
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitorAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitorAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vPerson"
            Begin Extent = 
               Top = 6
               Left = 239
               Bottom = 114
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "vPerson_1"
            Begin Extent = 
               Top = 128
               Left = 524
               Bottom = 236
               Right = 714
            End
            DisplayFlags = 280
            TopColumn = 28
         End
         Begin Table = "vPerson_2"
            Begin Extent = 
               Top = 6
               Left = 518
               Bottom = 114
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 28
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 21
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4770
         Alias = 2160
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vVisitors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vAttendanceDtl"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 18
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWeekly_Attendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWeekly_Attendance'
GO
USE [master]
GO
ALTER DATABASE [SchedulerPlus] SET  READ_WRITE 
GO
