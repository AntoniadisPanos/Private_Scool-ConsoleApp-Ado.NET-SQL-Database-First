USE [Private_School]
GO
/****** Object:  Table [dbo].[AssignentsPerCourse]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[Assignment]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[AssignmentsPerStudentPerCourse]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[StudentsPerCourse]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[Trainer]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
/****** Object:  Table [dbo].[TrainersPerCourse]    Script Date: 29-Apr-21 3:44:37 PM ******/
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
