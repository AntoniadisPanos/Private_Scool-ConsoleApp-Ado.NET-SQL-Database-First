USE [master]
GO
/****** Object:  Database [Private_School]    Script Date: 28-Apr-21 4:49:14 PM ******/
CREATE DATABASE [Private_School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Private_School', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Private_School.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Private_School_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Private_School_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Private_School] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Private_School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Private_School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Private_School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Private_School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Private_School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Private_School] SET ARITHABORT OFF 
GO
ALTER DATABASE [Private_School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Private_School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Private_School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Private_School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Private_School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Private_School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Private_School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Private_School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Private_School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Private_School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Private_School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Private_School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Private_School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Private_School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Private_School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Private_School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Private_School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Private_School] SET RECOVERY FULL 
GO
ALTER DATABASE [Private_School] SET  MULTI_USER 
GO
ALTER DATABASE [Private_School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Private_School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Private_School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Private_School] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Private_School] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Private_School] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Private_School', N'ON'
GO
ALTER DATABASE [Private_School] SET QUERY_STORE = OFF
GO
USE [Private_School]
GO
/****** Object:  Table [dbo].[AssignentsPerCourse]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignentsPerCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_AssignentsPerCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[AssignmentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[SubDateTime] [datetime] NOT NULL,
	[OralMark] [nvarchar](50) NOT NULL,
	[TotalMark] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignmentsPerStudentPerCourse]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentsPerStudentPerCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[AssignmentID] [int] NOT NULL,
 CONSTRAINT [PK_AssignmentsPerStudentPerCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CourseID] ASC,
	[StudentID] ASC,
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Stream] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[TuitionFees] [money] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsPerCourse]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsPerCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
 CONSTRAINT [PK_StudentsPerCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CourseID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainersPerCourse]    Script Date: 28-Apr-21 4:49:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainersPerCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrainerID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_TrainersPerCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[TrainerID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignentsPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignentsPerCourse_Assignment] FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignment] ([ID])
GO
ALTER TABLE [dbo].[AssignentsPerCourse] CHECK CONSTRAINT [FK_AssignentsPerCourse_Assignment]
GO
ALTER TABLE [dbo].[AssignentsPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignentsPerCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[AssignentsPerCourse] CHECK CONSTRAINT [FK_AssignentsPerCourse_Course]
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Assignment] FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignment] ([ID])
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse] CHECK CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Assignment]
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse] CHECK CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Course]
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[AssignmentsPerStudentPerCourse] CHECK CONSTRAINT [FK_AssignmentsPerStudentPerCourse_Student]
GO
ALTER TABLE [dbo].[StudentsPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentsPerCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[StudentsPerCourse] CHECK CONSTRAINT [FK_StudentsPerCourse_Course]
GO
ALTER TABLE [dbo].[StudentsPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentsPerCourse_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[StudentsPerCourse] CHECK CONSTRAINT [FK_StudentsPerCourse_Student]
GO
ALTER TABLE [dbo].[TrainersPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrainersPerCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[TrainersPerCourse] CHECK CONSTRAINT [FK_TrainersPerCourse_Course]
GO
ALTER TABLE [dbo].[TrainersPerCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrainersPerCourse_Trainer] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([ID])
GO
ALTER TABLE [dbo].[TrainersPerCourse] CHECK CONSTRAINT [FK_TrainersPerCourse_Trainer]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment] CHECK  (([totalmark]<=(100)))
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment_1] CHECK  (([OralMark]<=(100)))
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment_1]
GO
USE [master]
GO
ALTER DATABASE [Private_School] SET  READ_WRITE 
GO
