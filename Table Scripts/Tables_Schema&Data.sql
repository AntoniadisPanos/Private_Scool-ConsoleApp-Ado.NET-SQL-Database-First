USE [Private_School]
GO
/****** Object:  Table [dbo].[AssignentsPerCourse]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Assignment]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[AssignmentsPerStudentPerCourse]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[StudentsPerCourse]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Trainer]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[TrainersPerCourse]    Script Date: 29-Apr-21 3:47:30 PM ******/
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
SET IDENTITY_INSERT [dbo].[AssignentsPerCourse] ON 

INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (1, 3, 1)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (2, 4, 3)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (3, 5, 4)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (4, 6, 5)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (5, 3, 4)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (7, 4, 6)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (9, 3, 9)
INSERT [dbo].[AssignentsPerCourse] ([ID], [AssignmentID], [CourseID]) VALUES (10, 5, 7)
SET IDENTITY_INSERT [dbo].[AssignentsPerCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDateTime], [OralMark], [TotalMark]) VALUES (3, N'Individual Project', N'Private Scool', CAST(N'2021-04-26T14:00:00.000' AS DateTime), N'55', N'85')
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDateTime], [OralMark], [TotalMark]) VALUES (4, N'Individual Project', N'Used Cars Catalog', CAST(N'2021-03-23T12:50:00.000' AS DateTime), N'67', N'90')
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDateTime], [OralMark], [TotalMark]) VALUES (5, N'Team Project', N'Virtual Market', CAST(N'2021-02-22T16:50:00.000' AS DateTime), N'70', N'80')
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDateTime], [OralMark], [TotalMark]) VALUES (6, N'Team Project', N'Hotel Booking', CAST(N'2021-02-20T11:30:00.000' AS DateTime), N'50', N'100')
SET IDENTITY_INSERT [dbo].[Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[AssignmentsPerStudentPerCourse] ON 

INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (2, 1, 3, 3)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (3, 3, 4, 4)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (4, 4, 5, 6)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (5, 5, 6, 6)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (6, 3, 5, 3)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (7, 6, 7, 4)
INSERT [dbo].[AssignmentsPerStudentPerCourse] ([ID], [CourseID], [StudentID], [AssignmentID]) VALUES (8, 9, 10, 5)
SET IDENTITY_INSERT [dbo].[AssignmentsPerStudentPerCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (1, N'CB13', N'C#', N'Part-Time', CAST(N'2021-02-15' AS Date), CAST(N'2021-08-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (3, N'CB13', N'C#', N'Full-Time', CAST(N'2021-02-15' AS Date), CAST(N'2021-05-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (4, N'CB13', N'JavaScript', N'Part-Time', CAST(N'2021-04-15' AS Date), CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (5, N'CB13', N'JavaScript', N'Full-Time', CAST(N'2021-01-15' AS Date), CAST(N'2021-04-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (6, N'CB13', N'Python', N'Part-Time', CAST(N'2021-04-14' AS Date), CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (7, N'CB13', N'Python', N'Full-Time', CAST(N'2021-01-15' AS Date), CAST(N'2021-04-15' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (9, N'CB13', N'Java', N'Part-Time', CAST(N'2021-05-01' AS Date), CAST(N'2021-11-01' AS Date))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (10, N'CB13', N'Java', N'Full-Time', CAST(N'2021-01-15' AS Date), CAST(N'2021-04-15' AS Date))
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (3, N'Panos', N'Antoniadis', CAST(N'1982-01-15' AS Date), 1500.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (4, N'George', N'Andianou', CAST(N'1990-02-23' AS Date), 2000.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (5, N'Adriana', N'Papadimou', CAST(N'1983-10-12' AS Date), 1234.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (6, N'Kostas', N'Germanos', CAST(N'1978-03-22' AS Date), 1000.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (7, N'Antreas', N'Nikodimou', CAST(N'1980-04-05' AS Date), 2000.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (9, N'Vasiliki', N'Papageorgiou', CAST(N'1985-03-06' AS Date), 3000.0000)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (10, N'Maria', N'Galanou', CAST(N'1987-01-02' AS Date), 1545.0000)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentsPerCourse] ON 

INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (1, 1, 3)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (2, 3, 4)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (4, 4, 5)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (5, 5, 6)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (6, 3, 5)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (7, 6, 7)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (8, 7, 9)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (9, 9, 10)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (10, 10, 7)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (13, 9, 6)
INSERT [dbo].[StudentsPerCourse] ([ID], [CourseID], [StudentID]) VALUES (14, 5, 7)
SET IDENTITY_INSERT [dbo].[StudentsPerCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (1, N'Kostas', N'Takakis', N'Back-End')
INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (2, N'Pantazis', N'Siklarlis', N'SQL')
INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (3, N'Hector', N'Gatsos', N'Front-End')
INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (4, N'George', N'Pasparakis', N'Front-End')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
GO
SET IDENTITY_INSERT [dbo].[TrainersPerCourse] ON 

INSERT [dbo].[TrainersPerCourse] ([ID], [TrainerID], [CourseID]) VALUES (3, 1, 3)
INSERT [dbo].[TrainersPerCourse] ([ID], [TrainerID], [CourseID]) VALUES (4, 2, 4)
INSERT [dbo].[TrainersPerCourse] ([ID], [TrainerID], [CourseID]) VALUES (5, 1, 3)
INSERT [dbo].[TrainersPerCourse] ([ID], [TrainerID], [CourseID]) VALUES (6, 4, 1)
INSERT [dbo].[TrainersPerCourse] ([ID], [TrainerID], [CourseID]) VALUES (7, 3, 5)
SET IDENTITY_INSERT [dbo].[TrainersPerCourse] OFF
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
