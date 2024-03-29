USE [master]
GO
/****** Object:  Database [DBQuizSharp]    Script Date: 12/8/2021 11:42:55 PM ******/
CREATE DATABASE [DBQuizSharp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBQuizSharp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBQuizSharp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBQuizSharp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBQuizSharp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBQuizSharp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBQuizSharp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBQuizSharp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBQuizSharp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBQuizSharp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBQuizSharp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBQuizSharp] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBQuizSharp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBQuizSharp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBQuizSharp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBQuizSharp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBQuizSharp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBQuizSharp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBQuizSharp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBQuizSharp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBQuizSharp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBQuizSharp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBQuizSharp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBQuizSharp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBQuizSharp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBQuizSharp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBQuizSharp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBQuizSharp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBQuizSharp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBQuizSharp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBQuizSharp] SET  MULTI_USER 
GO
ALTER DATABASE [DBQuizSharp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBQuizSharp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBQuizSharp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBQuizSharp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBQuizSharp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBQuizSharp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBQuizSharp] SET QUERY_STORE = OFF
GO
USE [DBQuizSharp]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] NOT NULL,
	[status] [nvarchar](50) NULL,
	[role] [nvarchar](10) NULL,
	[accountID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [nvarchar](100) NULL,
	[uID] [int] NULL,
	[Date] [date] NULL,
	[Amount] [real] NULL,
	[Status] [nvarchar](50) NULL,
	[Currency] [nvarchar](20) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [date] NULL,
	[expiredDate] [date] NULL,
	[uid] [int] NULL,
 CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learning_Mode]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learning_Mode](
	[modeID] [int] NOT NULL,
	[modeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Learning_Mode] PRIMARY KEY CLUSTERED 
(
	[modeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learning_Progress]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learning_Progress](
	[uID] [int] NOT NULL,
	[SetID] [int] NOT NULL,
	[ModeID] [int] NOT NULL,
	[QuizID] [int] NOT NULL,
	[Attempt] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[term] [text] NOT NULL,
	[definition] [text] NOT NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Set_Study]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Set_Study](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[Description] [text] NULL,
	[IsPrivate] [bit] NULL,
 CONSTRAINT [PK_Set_Study] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Set_Study_Quiz]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Set_Study_Quiz](
	[quiz_id] [int] NOT NULL,
	[set_study_id] [int] NOT NULL,
 CONSTRAINT [PK_Set_Study_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC,
	[set_study_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/8/2021 11:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[avatar_url] [nvarchar](max) NOT NULL,
	[email] [varchar](100) NULL,
	[dob] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (1, N'premium', N'member', 1)
INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (2, N'normal', N'member', 2)
INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (4, N'normal', N'member', 3)
INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (5, N'normal', N'member', 4)
INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (6, N'normal', N'member', 5)
INSERT [dbo].[Account] ([uID], [status], [role], [accountID]) VALUES (11, N'normal', N'member', 6)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([BillID], [OrderID], [uID], [Date], [Amount], [Status], [Currency], [Description]) VALUES (3, N'order_IUBFbwbYokt5Lh', 1, CAST(N'2021-12-06' AS Date), 35.99, N'Success', N'USD', N'Transaction of customer trant in 12/6/2021 6:56:24 PM')
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[contract] ON 

INSERT [dbo].[contract] ([ContractID], [startDate], [expiredDate], [uid]) VALUES (1, CAST(N'2021-12-06' AS Date), CAST(N'2022-12-06' AS Date), 1)
SET IDENTITY_INSERT [dbo].[contract] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (1, N'Array', N'(n.) a large group of people or things')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (2, N'environment', N'the natural')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (3, N'habitat', N'A natural area where a plant or animal lives')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (4, N'pollution', N'damage to air ,water, et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (5, N'extend', N'to reach past , get bigger')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (6, N'fell', N'v, to cut down')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (7, N'cut or knock down (a tree or a person)', N'bring down (with a missile)')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (8, N'nutrients', N'n , the goodness in food')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (9, N'aquatic', N'adj, living in the water')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (10, N'vanish', N'v, to disappear')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (11, N'myriad', N'adj, many , numerous')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (12, N'intact', N'adj, whole , complete')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (13, N'intercept', N'v, to catch , to interrupt the progress of something')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (14, N'stabilize', N'v, to keep from changing , maintain.')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (15, N'erosion', N'n, loss of soil from the action of water or wind')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (16, N'vegetation', N'n, plants')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (17, N'inhibit', N'v, to prevent , slow down')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (18, N'defense', N'n, protection')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (19, N'deforestation', N'n, the removal of all trees from a large area logging')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (20, N'XXX', N'PORN')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (21, N'Media Manager IV', N'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (22, N'Assistant Media Planner', N'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (23, N'Editor', N'quisque arcu libero rutrum ac lobortis vel dapibus at diam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (24, N'Operator', N'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (25, N'Project Manager', N'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (26, N'Senior Cost Accountant', N'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (27, N'Recruiting Manager', N'nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (28, N'Assistant Media Planner', N'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (29, N'Community Outreach Specialist', N'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (30, N'Programmer Analyst II', N'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (31, N'Internal Auditor', N'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (32, N'Tax Accountant', N'nibh in lectus pellentesque at nulla suspendisse potenti cras in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (33, N'Web Designer II', N'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (34, N'Structural Analysis Engineer', N'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (35, N'Clinical Specialist', N'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (36, N'Paralegal', N'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (37, N'Civil Engineer', N'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (38, N'Software Engineer I', N'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (39, N'Software Engineer III', N'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (40, N'Operator', N'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (41, N'Assistant Manager', N'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (42, N'Staff Scientist', N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (43, N'Nurse', N'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (44, N'Clinical Specialist', N'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (45, N'Financial Advisor', N'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (46, N'Office Assistant II', N'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (47, N'Nurse Practicioner', N'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (48, N'Database Administrator III', N'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (49, N'Environmental Tech', N'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (50, N'VP Marketing', N'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (51, N'Pharmacist', N'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (52, N'Account Executive', N'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (53, N'Accounting Assistant IV', N'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (54, N'Research Nurse', N'nullam sit amet turpis elementum ligula vehicula consequat morbi a')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (55, N'Paralegal', N'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (56, N'Executive Secretary', N'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (57, N'Programmer Analyst III', N'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (58, N'Tax Accountant', N'cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (59, N'GIS Technical Architect', N'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (60, N'Professor', N'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (61, N'Systems Administrator II', N'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (62, N'Senior Editor', N'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (63, N'Nuclear Power Engineer', N'fusce lacus purus aliquet at feugiat non pretium quis lectus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (64, N'Analyst Programmer', N'sit amet eros suspendisse accumsan tortor quis turpis sed ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (65, N'Electrical Engineer', N'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (66, N'Electrical Engineer', N'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (67, N'Actuary', N'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (68, N'Senior Financial Analyst', N'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (69, N'Junior Executive', N'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (70, N'Editor', N'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (71, N'Staff Scientist', N'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (72, N'Pharmacist', N'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (73, N'VP Sales', N'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (74, N'Civil Engineer', N'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (75, N'Assistant Professor', N'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (76, N'Desktop Support Technician', N'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (77, N'Staff Accountant IV', N'magna at nunc commodo placerat praesent blandit nam nulla integer pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (78, N'Operator', N'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (79, N'Sales Associate', N'sapien varius ut blandit non interdum in ante vestibulum ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (80, N'Senior Quality Engineer', N'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (81, N'Help Desk Technician', N'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (82, N'Graphic Designer', N'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (83, N'Automation Specialist II', N'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (84, N'Staff Scientist', N'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (85, N'Assistant Media Planner', N'congue eget semper rutrum nulla nunc purus phasellus in felis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (86, N'Help Desk Technician', N'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (87, N'Civil Engineer', N'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (88, N'Software Test Engineer IV', N'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (89, N'Junior Executive', N'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (90, N'Environmental Tech', N'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (91, N'Registered Nurse', N'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (92, N'Staff Accountant IV', N'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (93, N'Paralegal', N'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (94, N'Assistant Manager', N'ipsum primis in faucibus orci luctus et ultrices posuere cubilia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (95, N'Analog Circuit Design manager', N'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (96, N'Information Systems Manager', N'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (97, N'Media Manager III', N'leo odio condimentum id luctus nec molestie sed justo pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (98, N'Paralegal', N'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (99, N'Research Assistant I', N'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis')
GO
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (100, N'Social Worker', N'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (101, N'Database Administrator II', N'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (102, N'Design Engineer', N'sapien sapien non mi integer ac neque duis bibendum morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (103, N'Nurse Practicioner', N'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (104, N'Human Resources Manager', N'donec dapibus duis at velit eu est congue elementum in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (105, N'VP Marketing', N'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (106, N'Social Worker', N'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (107, N'Mechanical Systems Engineer', N'ante ipsum primis in faucibus orci luctus et ultrices posuere')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (108, N'Database Administrator IV', N'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (109, N'Speech Pathologist', N'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (110, N'Quality Control Specialist', N'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (111, N'Structural Analysis Engineer', N'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (112, N'Computer Systems Analyst II', N'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (113, N'Pharmacist', N'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (114, N'Financial Advisor', N'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (115, N'Paralegal', N'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (116, N'Structural Analysis Engineer', N'ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (117, N'Account Representative IV', N'quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (118, N'Quality Engineer', N'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (119, N'Health Coach I', N'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (120, N'Technical Writer', N'consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (121, N'Associate Professor', N'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (122, N'Information Systems Manager', N'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (123, N'VP Sales', N'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (124, N'Statistician II', N'semper sapien a libero nam dui proin leo odio porttitor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (125, N'Budget/Accounting Analyst III', N'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (126, N'Staff Accountant I', N'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (127, N'Registered Nurse', N'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (128, N'Safety Technician IV', N'est risus auctor sed tristique in tempus sit amet sem fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (129, N'Systems Administrator III', N'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (130, N'Electrical Engineer', N'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (131, N'Quality Control Specialist', N'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (132, N'Mechanical Systems Engineer', N'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (133, N'Accountant I', N'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (134, N'Accountant II', N'tempus semper est quam pharetra magna ac consequat metus sapien ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (135, N'Accounting Assistant IV', N'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (136, N'Nurse', N'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (137, N'Chief Design Engineer', N'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (138, N'Assistant Manager', N'proin at turpis a pede posuere nonummy integer non velit donec diam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (139, N'Account Representative II', N'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (140, N'Biostatistician III', N'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (141, N'Administrative Assistant I', N'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (142, N'Automation Specialist IV', N'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (143, N'Software Consultant', N'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (144, N'Office Assistant II', N'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (145, N'Dental Hygienist', N'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (146, N'Librarian', N'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (147, N'Database Administrator I', N'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (148, N'Environmental Specialist', N'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (149, N'Teacher', N'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (150, N'Help Desk Operator', N'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (151, N'General Manager', N'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (152, N'Design Engineer', N'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (153, N'Legal Assistant', N'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (154, N'VP Product Management', N'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (155, N'VP Accounting', N'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (156, N'Chief Design Engineer', N'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (157, N'Automation Specialist II', N'sed tristique in tempus sit amet sem fusce consequat nulla nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (158, N'Internal Auditor', N'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (159, N'Graphic Designer', N'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (160, N'Structural Analysis Engineer', N'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (161, N'Registered Nurse', N'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (162, N'Programmer IV', N'sit amet nunc viverra dapibus nulla suscipit ligula in lacus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (163, N'Administrative Assistant II', N'nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (164, N'Database Administrator IV', N'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (165, N'Account Executive', N'turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (166, N'Systems Administrator IV', N'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (167, N'Financial Advisor', N'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (168, N'Professor', N'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (169, N'Programmer Analyst I', N'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (170, N'Data Coordiator', N'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (171, N'Research Associate', N'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (172, N'Design Engineer', N'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (173, N'Nurse Practicioner', N'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (174, N'VP Marketing', N'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (175, N'Nurse', N'eget orci vehicula condimentum curabitur in libero ut massa volutpat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (176, N'Administrative Officer', N'metus sapien ut nunc vestibulum ante ipsum primis in faucibus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (177, N'Web Designer II', N'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (178, N'Environmental Tech', N'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (179, N'Mechanical Systems Engineer', N'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (180, N'Junior Executive', N'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (181, N'VP Accounting', N'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (182, N'Tax Accountant', N'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (183, N'Product Engineer', N'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (184, N'Nurse', N'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (185, N'Social Worker', N'maecenas tincidunt lacus at velit vivamus vel nulla eget eros')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (186, N'Accountant III', N'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (187, N'Actuary', N'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (188, N'Database Administrator I', N'morbi a ipsum integer a nibh in quis justo maecenas rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (189, N'Human Resources Manager', N'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (190, N'Programmer I', N'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (191, N'Sales Associate', N'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (192, N'Community Outreach Specialist', N'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (193, N'Recruiting Manager', N'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (194, N'Senior Developer', N'aenean auctor gravida sem praesent id massa id nisl venenatis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (195, N'Pharmacist', N'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (196, N'Legal Assistant', N'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (197, N'Nurse', N'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (198, N'Help Desk Operator', N'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (199, N'Web Developer II', N'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique')
GO
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (200, N'Marketing Manager', N'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (201, N'Software Engineer III', N'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (202, N'Mechanical Systems Engineer', N'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (203, N'Accountant I', N'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (204, N'Professor', N'at nulla suspendisse potenti cras in purus eu magna vulputate')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (205, N'Developer III', N'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (206, N'Chief Design Engineer', N'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (207, N'Pharmacist', N'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (208, N'VP Sales', N'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (209, N'Community Outreach Specialist', N'ut odio cras mi pede malesuada in imperdiet et commodo vulputate')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (210, N'Structural Analysis Engineer', N'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (211, N'Statistician IV', N'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (212, N'Staff Scientist', N'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (213, N'Senior Developer', N'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (214, N'Junior Executive', N'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (215, N'Staff Accountant I', N'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (216, N'Media Manager II', N'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (217, N'Librarian', N'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (218, N'Assistant Manager', N'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (219, N'Teacher', N'erat nulla tempus vivamus in felis eu sapien cursus vestibulum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (220, N'Automation Specialist IV', N'tempus sit amet sem fusce consequat nulla nisl nunc nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (221, N'Structural Analysis Engineer', N'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (222, N'Product Engineer', N'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (223, N'Nurse Practicioner', N'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (224, N'Budget/Accounting Analyst IV', N'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (225, N'Occupational Therapist', N'porta volutpat erat quisque erat eros viverra eget congue eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (226, N'Biostatistician II', N'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (227, N'Information Systems Manager', N'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (228, N'Nurse Practicioner', N'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (229, N'Director of Sales', N'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (230, N'Mechanical Systems Engineer', N'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (231, N'Web Designer IV', N'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (232, N'Research Associate', N'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (233, N'Software Test Engineer IV', N'duis faucibus accumsan odio curabitur convallis duis consequat dui nec')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (234, N'Pharmacist', N'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (235, N'Financial Analyst', N'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (236, N'Financial Analyst', N'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (237, N'Community Outreach Specialist', N'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (238, N'Research Assistant IV', N'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (239, N'Senior Cost Accountant', N'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (240, N'VP Accounting', N'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (241, N'Actuary', N'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (242, N'Business Systems Development Analyst', N'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (243, N'Occupational Therapist', N'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (244, N'Safety Technician III', N'pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (245, N'Assistant Professor', N'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (246, N'Research Assistant I', N'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (247, N'Nurse', N'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (248, N'Systems Administrator II', N'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (249, N'Human Resources Manager', N'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (250, N'Engineer II', N'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (251, N'General Manager', N'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (252, N'Nurse Practicioner', N'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (253, N'Data Coordiator', N'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (254, N'Senior Developer', N'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (255, N'Sales Associate', N'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (256, N'Quality Control Specialist', N'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (257, N'Account Coordinator', N'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (258, N'Staff Scientist', N'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (259, N'Web Developer I', N'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (260, N'Senior Cost Accountant', N'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (261, N'Clinical Specialist', N'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (262, N'Paralegal', N'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (263, N'Health Coach IV', N'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (264, N'Associate Professor', N'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (265, N'Assistant Media Planner', N'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (266, N'Marketing Manager', N'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (267, N'Pharmacist', N'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (268, N'Nurse Practicioner', N'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (269, N'Administrative Officer', N'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (270, N'Teacher', N'ornare consequat lectus in est risus auctor sed tristique in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (271, N'Desktop Support Technician', N'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (272, N'Actuary', N'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (273, N'Media Manager III', N'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (274, N'Senior Quality Engineer', N'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (275, N'Staff Scientist', N'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (276, N'Senior Sales Associate', N'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (277, N'Senior Financial Analyst', N'cursus vestibulum proin eu mi nulla ac enim in tempor turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (278, N'VP Sales', N'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (279, N'Research Assistant II', N'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (280, N'Registered Nurse', N'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (281, N'Media Manager IV', N'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (282, N'VP Marketing', N'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (283, N'Chemical Engineer', N'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (284, N'Assistant Manager', N'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (285, N'Compensation Analyst', N'in felis eu sapien cursus vestibulum proin eu mi nulla ac')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (286, N'Help Desk Operator', N'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (287, N'Senior Sales Associate', N'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (288, N'Marketing Assistant', N'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (289, N'Legal Assistant', N'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (290, N'Data Coordiator', N'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (291, N'Nurse', N'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (292, N'Financial Advisor', N'eleifend quam a odio in hac habitasse platea dictumst maecenas ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (293, N'Analog Circuit Design manager', N'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (294, N'Project Manager', N'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (295, N'Design Engineer', N'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (296, N'Chemical Engineer', N'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (297, N'Financial Analyst', N'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (298, N'Compensation Analyst', N'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (299, N'Paralegal', N'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam')
GO
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (300, N'Environmental Tech', N'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (301, N'Product Engineer', N'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (302, N'Structural Analysis Engineer', N'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (303, N'Analyst Programmer', N'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (304, N'Software Consultant', N'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (305, N'Financial Advisor', N'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (306, N'Research Associate', N'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (307, N'Account Representative IV', N'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (308, N'Financial Analyst', N'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (309, N'Structural Engineer', N'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (310, N'Occupational Therapist', N'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (311, N'Environmental Specialist', N'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (312, N'Programmer I', N'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (313, N'Chemical Engineer', N'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (314, N'Electrical Engineer', N'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (315, N'Structural Engineer', N'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (316, N'Dental Hygienist', N'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (317, N'Junior Executive', N'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (318, N'Developer III', N'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (319, N'Senior Cost Accountant', N'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (320, N'Assistant Professor', N'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (321, N'Technical Writer', N'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (322, N'Computer Systems Analyst I', N'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (323, N'Civil Engineer', N'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (324, N'Internal Auditor', N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (325, N'Desktop Support Technician', N'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (326, N'Legal Assistant', N'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (327, N'Analyst Programmer', N'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (328, N'Financial Advisor', N'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (329, N'Research Assistant I', N'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (330, N'Developer II', N'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (331, N'Sales Associate', N'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (332, N'Biostatistician III', N'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (333, N'Professor', N'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (334, N'Assistant Media Planner', N'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (335, N'Account Executive', N'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (336, N'VP Quality Control', N'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (337, N'Marketing Manager', N'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (338, N'Research Associate', N'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (339, N'Internal Auditor', N'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (340, N'VP Sales', N'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (341, N'Compensation Analyst', N'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (342, N'Staff Accountant IV', N'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (343, N'Help Desk Technician', N'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (344, N'Staff Scientist', N'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (345, N'Staff Scientist', N'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (346, N'Research Assistant III', N'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (347, N'Payment Adjustment Coordinator', N'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (348, N'Quality Engineer', N'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (349, N'Staff Accountant II', N'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (350, N'Electrical Engineer', N'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (351, N'Account Coordinator', N'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (352, N'Statistician I', N'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (353, N'Marketing Assistant', N'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (354, N'Help Desk Technician', N'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (355, N'Nurse Practicioner', N'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (356, N'Accounting Assistant IV', N'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (357, N'Junior Executive', N'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (358, N'Editor', N'cum sociis natoque penatibus et magnis dis parturient montes nascetur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (359, N'Technical Writer', N'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (360, N'Chemical Engineer', N'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (361, N'Systems Administrator II', N'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (362, N'Automation Specialist I', N'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (363, N'Compensation Analyst', N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (364, N'Sales Associate', N'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (365, N'Help Desk Technician', N'commodo placerat praesent blandit nam nulla integer pede justo lacinia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (366, N'Programmer Analyst II', N'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (367, N'VP Quality Control', N'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (368, N'VP Product Management', N'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (369, N'Software Test Engineer III', N'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (370, N'Financial Advisor', N'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (371, N'Geological Engineer', N'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (372, N'Analog Circuit Design manager', N'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (373, N'Analyst Programmer', N'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (374, N'Human Resources Manager', N'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (375, N'Chief Design Engineer', N'vehicula consequat morbi a ipsum integer a nibh in quis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (376, N'VP Marketing', N'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (377, N'Computer Systems Analyst IV', N'volutpat dui maecenas tristique est et tempus semper est quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (378, N'VP Accounting', N'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (379, N'Analog Circuit Design manager', N'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (380, N'Software Test Engineer IV', N'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (381, N'Computer Systems Analyst IV', N'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (382, N'Data Coordiator', N'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (383, N'Research Associate', N'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (384, N'Internal Auditor', N'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (385, N'Account Executive', N'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (386, N'Research Nurse', N'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (387, N'Mechanical Systems Engineer', N'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (388, N'Information Systems Manager', N'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (389, N'Graphic Designer', N'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (390, N'Programmer III', N'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (391, N'Staff Accountant IV', N'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (392, N'Account Executive', N'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (393, N'Recruiting Manager', N'nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (394, N'Nurse', N'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (395, N'Director of Sales', N'posuere nonummy integer non velit donec diam neque vestibulum eget')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (396, N'Data Coordiator', N'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (397, N'Accounting Assistant II', N'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (398, N'Speech Pathologist', N'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (399, N'Automation Specialist II', N'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in')
GO
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (400, N'Data Coordiator', N'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (401, N'Payment Adjustment Coordinator', N'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (402, N'Recruiting Manager', N'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (403, N'Executive Secretary', N'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (404, N'Marketing Assistant', N'ut massa volutpat convallis morbi odio odio elementum eu interdum eu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (405, N'VP Accounting', N'volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (406, N'Speech Pathologist', N'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (407, N'Director of Sales', N'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (408, N'Business Systems Development Analyst', N'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (409, N'Senior Editor', N'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (410, N'Budget/Accounting Analyst III', N'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (411, N'Staff Accountant III', N'nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (412, N'Accounting Assistant II', N'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (413, N'Operator', N'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (414, N'Librarian', N'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (415, N'Mechanical Systems Engineer', N'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (416, N'Structural Analysis Engineer', N'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (417, N'Executive Secretary', N'justo eu massa donec dapibus duis at velit eu est')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (418, N'Senior Developer', N'nulla integer pede justo lacinia eget tincidunt eget tempus vel')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (419, N'Information Systems Manager', N'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (420, N'Recruiting Manager', N'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (421, N'Account Executive', N'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (422, N'Computer Systems Analyst III', N'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (423, N'VP Product Management', N'integer pede justo lacinia eget tincidunt eget tempus vel pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (424, N'Design Engineer', N'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (425, N'Nurse Practicioner', N'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (426, N'Electrical Engineer', N'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (427, N'Food Chemist', N'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (428, N'Social Worker', N'vestibulum ante ipsum primis in faucibus orci luctus et ultrices')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (429, N'Recruiting Manager', N'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (430, N'Community Outreach Specialist', N'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (431, N'Electrical Engineer', N'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (432, N'Information Systems Manager', N'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (433, N'Marketing Manager', N'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (434, N'Design Engineer', N'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (435, N'Nurse Practicioner', N'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (436, N'Geological Engineer', N'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (437, N'Software Test Engineer II', N'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (438, N'Chemical Engineer', N'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (439, N'Clinical Specialist', N'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (440, N'Civil Engineer', N'consequat ut nulla sed accumsan felis ut at dolor quis odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (441, N'Senior Financial Analyst', N'quam a odio in hac habitasse platea dictumst maecenas ut massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (442, N'Product Engineer', N'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (443, N'Web Developer IV', N'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (444, N'Mechanical Systems Engineer', N'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (445, N'Budget/Accounting Analyst I', N'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (446, N'Research Associate', N'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (447, N'Environmental Tech', N'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (448, N'Accounting Assistant IV', N'non pretium quis lectus suspendisse potenti in eleifend quam a odio')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (449, N'Director of Sales', N'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (450, N'Structural Analysis Engineer', N'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (451, N'Sales Associate', N'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (452, N'Physical Therapy Assistant', N'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (453, N'Chemical Engineer', N'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (454, N'Environmental Tech', N'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (455, N'Web Developer IV', N'et tempus semper est quam pharetra magna ac consequat metus sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (456, N'Desktop Support Technician', N'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (457, N'Nuclear Power Engineer', N'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (458, N'Operator', N'aliquam non mauris morbi non lectus aliquam sit amet diam in')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (459, N'Software Consultant', N'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (460, N'VP Quality Control', N'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (461, N'Financial Analyst', N'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (462, N'Marketing Manager', N'mi nulla ac enim in tempor turpis nec euismod scelerisque quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (463, N'Analyst Programmer', N'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (464, N'Safety Technician IV', N'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (465, N'Web Developer IV', N'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (466, N'Marketing Manager', N'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (467, N'Social Worker', N'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (468, N'Assistant Media Planner', N'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (469, N'Programmer Analyst I', N'eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (470, N'Librarian', N'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (471, N'Clinical Specialist', N'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (472, N'Paralegal', N'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (473, N'Senior Sales Associate', N'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (474, N'Media Manager III', N'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (475, N'Quality Control Specialist', N'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (476, N'Quality Engineer', N'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (477, N'Environmental Tech', N'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (478, N'Food Chemist', N'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (479, N'Media Manager IV', N'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (480, N'Automation Specialist IV', N'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (481, N'Safety Technician II', N'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (482, N'Accounting Assistant III', N'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (483, N'Geologist I', N'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (484, N'Internal Auditor', N'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (485, N'Programmer Analyst I', N'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (486, N'Legal Assistant', N'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (487, N'Sales Representative', N'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (488, N'VP Marketing', N'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (489, N'VP Marketing', N'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (490, N'Food Chemist', N'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (491, N'Programmer Analyst I', N'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (492, N'Compensation Analyst', N'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (493, N'Chemical Engineer', N'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (494, N'Web Developer III', N'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (495, N'Information Systems Manager', N'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (496, N'Senior Developer', N'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (497, N'Assistant Professor', N'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (498, N'Research Associate', N'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (499, N'Project Manager', N'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et')
GO
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (500, N'Product Engineer', N'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (501, N'cdaad', N'csdfsdv.;')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (502, N'Responsive Web Design is...A. Designing pages for multiple platforms by incorporating fluid measurements and varying CSS rules.B. Designing pages for the mobile view.C. Designing multiple pages; one for each type of major device (phone; tablet; laptop; and desktop)', N'A')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (503, N'Adaptive design with dynamic serving is....A. Designing pages for multiple platforms by incorporating fluid measurements and varying CSS rules.B. Designing pages for the mobile view.C. Designing multiple pages; one for each type of major device (phone; tablet; laptop; and desktop)', N'C')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (504, N'Which of the following is a true statement about using a separate "m." site for your content?A. It is difficult to keep multiple versions of your site consistent. Any updates must be made in multiple places.B. Some search engines require a .m version of your site.C. Users have control over which version of the page they can see; regardless of the device they are using.', N'A')
INSERT [dbo].[Quiz] ([id], [term], [definition]) VALUES (505, N'The mobile version of your web page should have the same capabilities of every other version of your site. ( T/F )', N'T')
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Set_Study] ON 

INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (1, 1, N'IELTs 9.0', CAST(N'2019-03-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (2, 1, N'SWE201c - SP21', CAST(N'2019-03-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (3, 2, N'SWR302', CAST(N'2019-04-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (4, 2, N'swt301 PT1', CAST(N'2019-03-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (6, 2, N'SWR302 Test1', CAST(N'2019-03-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (7, 2, N'SWR302 Test2', CAST(N'2019-03-19T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (8, 1, N'IELTs 6.5', CAST(N'2019-03-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (12, 2, N'IELTs 8.5', CAST(N'2019-03-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (13, 2, N'IELTs 7.5', CAST(N'2019-03-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (14, 1, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.583' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (15, 1, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.583' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (21, 4, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (22, 4, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (23, 4, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (24, 4, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (25, 4, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (26, 5, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (27, 5, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (28, 5, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (29, 5, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (30, 5, N'IELTs 7.5', CAST(N'2019-03-10T18:28:48.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (31, 6, N'IELTs 7.5', CAST(N'2019-03-10T18:31:05.730' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (32, 6, N'IELTs 7.5', CAST(N'2019-03-10T18:31:05.730' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (33, 6, N'IELTs 7.5', CAST(N'2019-03-10T18:31:05.730' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (34, 6, N'IELTs 7.5', CAST(N'2019-03-10T18:31:05.730' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (35, 6, N'IELTs 7.5', CAST(N'2019-03-10T18:31:05.733' AS DateTime), NULL, NULL)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (36, 1, N'responsive', CAST(N'2021-12-08T22:18:07.130' AS DateTime), N'a', 1)
INSERT [dbo].[Set_Study] ([id], [user_id], [title], [createdDate], [Description], [IsPrivate]) VALUES (37, 1, N'responsive', CAST(N'2021-12-08T23:09:30.707' AS DateTime), N'Test create Quiz', 1)
SET IDENTITY_INSERT [dbo].[Set_Study] OFF
GO
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (1, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (1, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (2, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (2, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (3, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (4, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (5, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (5, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (6, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (6, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (7, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (8, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (8, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (9, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (9, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (10, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (11, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (12, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (12, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (13, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (13, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (14, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (14, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (15, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (15, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (16, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (17, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (18, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (19, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (19, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (20, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (20, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (21, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (22, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (23, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (24, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (25, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (26, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (27, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (28, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (30, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (31, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (32, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (33, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (36, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (37, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (38, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (39, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (40, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (41, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (42, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (44, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (45, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (46, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (47, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (48, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (50, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (51, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (52, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (53, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (55, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (57, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (58, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (59, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (60, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (61, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (62, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (64, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (66, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (67, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (68, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (69, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (70, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (71, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (72, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (73, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (74, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (75, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (76, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (77, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (78, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (79, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (80, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (82, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (83, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (85, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (86, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (87, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (88, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (91, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (92, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (93, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (94, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (95, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (97, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (98, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (102, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (103, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (104, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (106, 31)
GO
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (107, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (108, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (109, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (114, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (115, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (116, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (117, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (120, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (121, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (122, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (123, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (124, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (125, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (126, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (127, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (128, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (133, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (135, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (136, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (138, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (139, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (140, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (141, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (142, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (146, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (147, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (148, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (149, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (150, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (153, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (154, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (155, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (157, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (158, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (159, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (161, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (163, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (164, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (165, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (166, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (168, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (171, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (173, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (176, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (178, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (179, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (180, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (181, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (182, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (183, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (184, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (185, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (186, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (189, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (190, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (191, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (192, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (193, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (194, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (195, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (197, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (198, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (199, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (200, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (201, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (202, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (203, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (204, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (206, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (207, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (208, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (209, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (212, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (214, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (215, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (217, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (218, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (219, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (220, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (221, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (222, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (223, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (224, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (225, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (228, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (229, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (233, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (235, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (236, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (237, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (239, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (240, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (242, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (243, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (245, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (246, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (247, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (248, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (249, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (250, 3)
GO
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (251, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (252, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (253, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (254, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (255, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (257, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (259, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (260, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (261, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (262, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (264, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (265, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (266, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (267, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (269, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (270, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (271, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (273, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (274, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (276, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (277, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (279, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (281, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (283, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (285, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (287, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (289, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (292, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (294, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (295, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (298, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (299, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (300, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (301, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (302, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (303, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (304, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (305, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (306, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (307, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (308, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (309, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (311, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (312, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (313, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (314, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (315, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (317, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (318, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (319, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (320, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (322, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (323, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (325, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (326, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (327, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (328, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (329, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (330, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (331, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (332, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (334, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (335, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (337, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (338, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (340, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (341, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (342, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (343, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (344, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (346, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (348, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (349, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (350, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (351, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (352, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (353, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (354, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (355, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (356, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (357, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (359, 22)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (360, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (361, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (362, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (363, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (364, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (365, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (366, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (367, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (368, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (369, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (373, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (374, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (375, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (376, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (379, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (380, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (381, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (382, 15)
GO
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (383, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (384, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (386, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (387, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (390, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (393, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (394, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (396, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (397, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (398, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (400, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (401, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (402, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (403, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (404, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (405, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (406, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (407, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (408, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (409, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (410, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (411, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (412, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (413, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (414, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (416, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (417, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (418, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (419, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (420, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (421, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (425, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (427, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (429, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (430, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (432, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (435, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (436, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (437, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (438, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (439, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (441, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (442, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (443, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (445, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (446, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (447, 8)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (448, 30)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (451, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (452, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (453, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (454, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (455, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (457, 26)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (458, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (459, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (460, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (461, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (462, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (464, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (465, 27)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (466, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (467, 21)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (468, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (469, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (470, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (472, 29)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (474, 33)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (475, 7)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (476, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (478, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (479, 15)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (480, 6)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (481, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (482, 14)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (484, 25)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (486, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (487, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (488, 32)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (489, 23)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (490, 24)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (492, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (493, 34)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (494, 13)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (495, 12)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (497, 28)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (498, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (499, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (500, 31)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (500, 35)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (502, 37)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (503, 37)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (504, 37)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (505, 37)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (1, N'trant', N'123456', N'https://avatars.dicebear.com/api/adventurer/your-custom-seed.svg', N'tranthe150186@fpt.edu.vn', CAST(N'1998-09-20' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (2, N'longnv', N'123456', N'https://avatars.dicebear.com/api/bottts/your-custom-seed.svg', N'thaycacac@gmail.com', CAST(N'1998-03-20' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (4, N'hiepdq', N'123456', N'https://avatars.dicebear.com/api/gridy/your-custom-seed.svg', N'bacodekiller@gmail.com', CAST(N'1997-02-05' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (5, N'trangnt', N'123456', N'https://avatars.dicebear.com/api/big-ears/your-custom-seed.svg', N'trangnt@gmail.com', CAST(N'1998-03-06' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (6, N'hoangph', N'123456', N'https://avatars.dicebear.com/api/big-smile/your-custom-seed.svg', N'hoangph@gmil.com', CAST(N'1998-03-04' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [email], [dob]) VALUES (11, N'Tea’s Diary', NULL, N'https://lh3.googleusercontent.com/a-/AOh14GixgbYCYp7HMWvUdrwWhJ4kQTsCriV6OxL67p9g=s100', N'phanl4025@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_email]    Script Date: 12/8/2021 11:42:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Unique_email] ON [dbo].[User]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_User]    Script Date: 12/8/2021 11:42:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Unique_User] ON [dbo].[User]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Set_Study] ADD  CONSTRAINT [DF_Set_Study_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_User] FOREIGN KEY([uID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_User]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([uID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  CONSTRAINT [FK_contract_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[contract] CHECK CONSTRAINT [FK_contract_User]
GO
ALTER TABLE [dbo].[Learning_Progress]  WITH CHECK ADD  CONSTRAINT [FK_Learning_Progress_Learning_Mode] FOREIGN KEY([ModeID])
REFERENCES [dbo].[Learning_Mode] ([modeID])
GO
ALTER TABLE [dbo].[Learning_Progress] CHECK CONSTRAINT [FK_Learning_Progress_Learning_Mode]
GO
ALTER TABLE [dbo].[Learning_Progress]  WITH CHECK ADD  CONSTRAINT [FK_Learning_Progress_Set_Study_Quiz] FOREIGN KEY([QuizID], [SetID])
REFERENCES [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id])
GO
ALTER TABLE [dbo].[Learning_Progress] CHECK CONSTRAINT [FK_Learning_Progress_Set_Study_Quiz]
GO
ALTER TABLE [dbo].[Learning_Progress]  WITH CHECK ADD  CONSTRAINT [FK_Learning_Progress_User] FOREIGN KEY([uID])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Learning_Progress] CHECK CONSTRAINT [FK_Learning_Progress_User]
GO
ALTER TABLE [dbo].[Set_Study]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Set_Study] CHECK CONSTRAINT [FK_Set_Study_User]
GO
ALTER TABLE [dbo].[Set_Study_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_Quiz_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[Set_Study_Quiz] CHECK CONSTRAINT [FK_Set_Study_Quiz_Quiz]
GO
ALTER TABLE [dbo].[Set_Study_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_Quiz_Set_Study] FOREIGN KEY([set_study_id])
REFERENCES [dbo].[Set_Study] ([id])
GO
ALTER TABLE [dbo].[Set_Study_Quiz] CHECK CONSTRAINT [FK_Set_Study_Quiz_Set_Study]
GO
USE [master]
GO
ALTER DATABASE [DBQuizSharp] SET  READ_WRITE 
GO
