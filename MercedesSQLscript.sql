USE [master]
GO
/****** Object:  Database [mercedes]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE DATABASE [mercedes]
 CONTAINMENT = NONE
GO
ALTER DATABASE [mercedes] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mercedes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mercedes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mercedes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mercedes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mercedes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mercedes] SET ARITHABORT OFF 
GO
ALTER DATABASE [mercedes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [mercedes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mercedes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mercedes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mercedes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mercedes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mercedes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mercedes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mercedes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mercedes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mercedes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mercedes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mercedes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mercedes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mercedes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mercedes] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [mercedes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mercedes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mercedes] SET  MULTI_USER 
GO
ALTER DATABASE [mercedes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mercedes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mercedes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mercedes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [mercedes] SET DELAYED_DURABILITY = DISABLED 
GO
USE [mercedes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/12/2022 1:28:36 PM ******/
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
/****** Object:  Table [dbo].[CommentLikes]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentLikes](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CommentId] [int] NOT NULL,
 CONSTRAINT [PK_CommentLikes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Images]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Likes]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageId] [int] NOT NULL,
	[ProductTypeId] [int] NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TypeProductId] [int] NOT NULL,
	[IsAir] [bit] NOT NULL,
	[Km] [decimal](18, 2) NOT NULL,
	[Kb] [decimal](18, 2) NOT NULL,
	[Ks] [decimal](18, 2) NOT NULL,
	[Made] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/12/2022 1:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200617172911_initial', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200617173730_initial2', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200618002543_initial3', N'3.1.4')
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (63, 3, 6)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (152, 2, 15)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (208, 8, 20)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (212, 2, 21)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (319, 9, 31)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (352, 2, 35)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (506, 6, 50)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (571, 1, 57)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (575, 5, 57)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (577, 7, 57)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (588, 8, 58)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (614, 4, 61)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (766, 6, 76)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (837, 7, 83)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (881, 1, 88)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (935, 5, 93)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (963, 3, 96)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (4311, 11, 43)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (5010, 10, 50)
INSERT [dbo].[CommentLikes] ([Id], [UserId], [CommentId]) VALUES (6112, 12, 61)
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (1, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11, 2, N'quantifying Ergonomic Metal Keyboard white Delaware Practical Metal Chips Innovative calculating backing up Handcrafted')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (2, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 27, N'Plastic withdrawal Greece New Hampshire Rustic Licensed Steel Cheese bandwidth Creek eyeballs')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (3, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 44, N'Diverse Camp mesh applications Industrial, Garden & Industrial black bricks-and-clicks Fresh generating')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (4, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 2, N'Electronics connect Granite Enterprise-wide Cross-platform Money Market Account Metal deposit Pennsylvania')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (5, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 40, N'Bedfordshire Mali Montserrat Sports & Shoes ROI XSS reinvent Developer Refined')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (6, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 50, N'reinvent magenta Soft discrete Orchestrator UIC-Franc time-frame Stravenue transmitter')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (7, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11, 10, N'Lilangeni leverage enhance Money Market Account back up JSON Baht Rustic Tasty Steel Sausages')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (8, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11, 5, N'mobile matrix Executive Practical Metal Ball fault-tolerant Bedfordshire transform Trinidad and Tobago Lebanese Pound')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (9, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 4, N'matrix haptic transmit Steel Ergonomic Plastic Tuna Toys & Baby Global Forward magenta')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (10, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 13, N'morph hack Dynamic Accounts Nebraska Ohio methodologies compressing firewall')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (11, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 32, N'Branding Auto Loan Account platforms Port portals Pula Creative extend Mobility')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (12, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 47, N'Markets dot-com Concrete Savings Account Central Security ADP SQL ROI')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (13, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 4, N'model Unbranded Rubber Gloves Incredible Concrete Pants Tasty Granite Tuna Trace bus violet parsing Program')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (14, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 23, N'Wooden Analyst protocol Ports Auto Loan Account District core Swiss Franc Technician')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (15, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 44, N'Developer system engine Berkshire Parkway transmitting white Checking Account deposit quantifying')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (16, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 48, N'SQL Mountains invoice Vision-oriented transmitter South Dakota customized Avon Personal Loan Account')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (17, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 35, N'technologies yellow Plastic Handmade encryption programming Colorado multi-byte leverage')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (18, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 1, N'District bypassing Movies e-commerce Function-based strategic Qatari Rial e-markets interfaces')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (19, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 12, N'Supervisor Intuitive Drive Developer support optical Executive Dynamic Fantastic Frozen Pants')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (20, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 26, N'bifurcated European Unit of Account 9(E.U.A.-9) backing up Neck networks one-to-one Ergonomic Concrete Bike program Cedi')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (21, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 21, N'Polarised Wyoming Park District Enterprise-wide invoice Concrete solution-oriented encryption')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (22, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 16, N'copying GB hacking aggregate tertiary matrices architect New Jersey pink')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (23, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 28, N'discrete Markets killer e-business Clothing, Books & Home synthesize superstructure Berkshire Fresh')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (24, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 20, N'deposit Rustic Cotton Pants US Dollar redefine back-end invoice parse architectures Mississippi')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (25, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 9, N'enhance Alabama Clothing orange Personal Loan Account Coordinator array Games purple')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (26, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 20, N'product workforce online productize deposit port Balanced Generic Steel Shoes knowledge base')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (27, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 20, N'Codes specifically reserved for testing purposes Belize Dollar Junction Fantastic Steel Chips connecting Clothing, Jewelery & Games Georgia Fundamental hard drive')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (28, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 46, N'Groves Assurance Row Monitored Dalasi white Polarised exuding JSON')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (29, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 44, N'Web archive Gorgeous invoice Estates Advanced Metal Money Market Account Movies, Books & Health')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (30, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 37, N'De-engineered JSON brand Awesome Plastic Hat Dynamic port Steel framework Australian Dollar')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (31, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 16, N'pink indexing Fantastic Wooden Bike Auto Loan Account Route auxiliary fuchsia Avon Savings Account')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (32, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 35, N'program Unbranded Rubber Chips Berkshire transmit human-resource PCI optimize Plastic Ergonomic Steel Mouse')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (33, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 12, N'Usability Creative parsing Guyana Solutions deposit Illinois Analyst copy')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (34, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 40, N'Iowa Ergonomic Wooden Chips Awesome Indiana Facilitator Junctions panel Human French Southern Territories')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (35, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 12, N'Alabama Auto Loan Account product Product Avon back up enhance Credit Card Account Tunisian Dinar')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (36, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 47, N'cross-platform Bedfordshire Sleek Soft Bacon Rustic Knolls Soft SSL purple Jewelery & Health')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (37, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11, 31, N'cultivate Handmade connecting override Plain SQL Games, Sports & Industrial black Naira')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (38, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 7, N'impactful Refined Rubber Car capacitor yellow action-items Benin Devolved Stream Avon')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (39, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 3, N'Small Frozen Chair Incredible Granite Mouse US Dollar 3rd generation Auto Loan Account Intelligent Metal Mouse Nebraska holistic Harbors')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (40, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 24, N'Incredible Wooden Pants efficient deliverables orchestrate unleash Intelligent withdrawal Soft District')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (41, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 5, N'bluetooth Concrete Zambia matrix next generation Frozen Intelligent Frozen Chips Decentralized Home Loan Account')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (42, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 24, N'SCSI calculate Auto Loan Account withdrawal transparent ability Manager Shoes monetize')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (43, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 32, N'California USB PNG reinvent RAM THX Incredible Rubber Towels sensor sensor')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (44, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 14, N'Neck structure Generic Wooden Chicken methodical Global array connecting bricks-and-clicks system')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (45, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 10, N'Rustic Granite Soap IB Spur Unbranded Concrete Fish Licensed convergence Analyst workforce Steel')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (46, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 31, N'Money Market Account Mobility extend Seychelles transparent orchid AGP Switchable national')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (47, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 11, N'HTTP reboot Public-key calculate generating pixel Intelligent Wooden Ball Lakes brand')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (48, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 11, N'Industrial & Grocery contextually-based Legacy solutions Plastic Florida redundant mesh migration')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (49, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 2, N'cross-media calculate Burundi Franc generating Island Wooden Ohio benchmark override')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (50, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 41, N'Louisiana Metal Licensed Steel bus e-business Licensed Movies Legacy')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (51, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 8, N'Junctions haptic Division secured line Sleek Soft Table connecting Harbors focus group infrastructure')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (52, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 4, N'indigo leading edge Vermont protocol Proactive Tasty bandwidth Gorgeous Wooden Chips Trace')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (53, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 3, N'Sleek Rubber Computer users Synergized withdrawal XML platforms infomediaries approach Planner')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (54, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 7, N'Italy architect Oman mindshare Savings Account Awesome Soft Bacon Division Borders Maine')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (55, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 49, N'Frozen 3rd generation RSS Moroccan Dirham Central Gambia Implementation microchip logistical')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (56, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 24, N'payment Street e-commerce bus Lake Shoes, Shoes & Home Vista Buckinghamshire Lead')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (57, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4, 7, N'Canyon Terrace monitor encryption Agent Health Berkshire Savings Account bus')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (58, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 46, N'Shore Georgia Future Robust generate Infrastructure cutting-edge mobile back up')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (59, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4, 6, N'Steel USB Auto Loan Account Designer COM purple gold Plastic SMTP')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (60, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 43, N'Sleek Grass-roots Awesome Wooden Tuna Credit Card Account Buckinghamshire pixel deploy PNG Arkansas')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (61, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 15, N'Dynamic transparent back-end sensor Ergonomic Handcrafted Concrete Towels haptic Convertible Marks card')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (62, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 46, N'Practical engage Rest partnerships Licensed Practical Rubber Chair Computers Valley Granite')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (63, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 20, N'Practical bluetooth evolve Berkshire Mobility Brazilian Real District bypass Industrial')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (64, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 50, N'Buckinghamshire Consultant Jamaica hacking schemas Solomon Islands Dollar SQL Handcrafted Steel Chair Grocery & Electronics')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (65, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 34, N'Direct online Timor-Leste Awesome Cotton Mouse Credit Card Account programming SMTP deposit Wisconsin')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (66, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 50, N'Toys blockchains Tasty Cotton Sausages background Grocery, Kids & Garden Home Loan Account panel neural-net payment')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (67, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 42, N'Incredible Frozen Bike payment Optimization Handcrafted SDD Principal Wells executive Serbia')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (68, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 2, N'Incredible Rubber Chair Synergistic Plastic Avon Station THX Ridges Land Incredible')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (69, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 17, N'Borders Credit Card Account Kansas e-tailers Music card Credit Card Account withdrawal Fantastic')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (70, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 37, N'connecting Ergonomic Operations Rhode Island Handcrafted Bahamian Dollar Refined Fantastic Granite Gloves solid state')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (71, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 9, N'North Dakota Incredible Fresh Car Usability Kids, Shoes & Kids Baby & Kids program Tonga magnetic Extension')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (72, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 40, N'Virtual quantify back up parse Views Road Sri Lanka Handcrafted Soft Hat sticky')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (73, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 31, N'Branding Streamlined Specialist facilitate benchmark networks SMTP Infrastructure Djibouti Franc')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (74, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 30, N'Music Identity connecting Practical Frozen Table Small Product Drives portals Cambridgeshire')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (75, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 18, N'Soft JSON Pennsylvania salmon teal maximize Bedfordshire matrix deposit')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (76, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 42, N'virtual deliverables communities Incredible Frozen Bike Wooden back-end Home, Games & Books implement aggregate')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (77, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 43, N'Forint HDD system maroon seamless deposit Usability innovative Incredible Fresh Ball')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (78, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 28, N'Investment Account dedicated Ohio quantify Prairie Silver Tenge Money Market Account Dong')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (79, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 33, N'mint green calculate Home Loan Account Liaison lavender payment Fantastic Soft Table dot-com XML')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (80, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 33, N'Steel Avon tangible Slovakia (Slovak Republic) Personal Loan Account Auto Loan Account Practical Metal Soap Checking Account pixel')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (81, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 20, N'Executive Hong Kong Dollar microchip Manager Liaison Cotton Handmade Concrete Towels Compatible withdrawal')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (82, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 17, N'Administrator orange input SAS back up expedite Garden & Automotive Incredible Fresh Table Architect')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (83, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 32, N'iterate partnerships quantifying Solutions Incredible Wooden Gloves Practical communities strategic partnerships')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (84, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 3, N'bus black Tactics Virginia firewall connect Configuration enterprise Liaison')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (85, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 5, N'Buckinghamshire Balanced calculating Customer Licensed Steel Hat Yemeni Rial Awesome Fresh Towels Nuevo Sol Fort')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (86, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 29, N'Netherlands Antilles Borders HDD Gorgeous Steel Chicken Program Savings Account Estate methodologies programming')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (87, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 12, 37, N'Islands payment complexity Wooden Research Home Loan Account open-source Handcrafted ADP')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (88, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 3, 23, N'mobile Manat RSS Loop Dynamic Rubber Cuba even-keeled Lithuanian Litas')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (89, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 37, N'Rhode Island circuit Electronics & Automotive Gorgeous B2B Credit Card Account solid state Stream Incredible')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (90, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4, 47, N'schemas Berkshire Integrated connect Shore Principal Manager conglomeration Marketing')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (91, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, 46, N'Concrete Fantastic New Hampshire Computers & Home Investment Account Future collaborative e-markets engineer')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (92, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 9, N'payment expedite hard drive withdrawal XSS Haven Intelligent Metal Computer SMTP leverage')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (93, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4, 12, N'Granite Handmade FTP cross-platform bypass Orchard Manor Agent indexing')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (94, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11, 47, N'bandwidth Intranet Wooden Fully-configurable Seychelles Rupee Well frictionless Cambridgeshire Alabama')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (95, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 4, 36, N'Mission pink HDD Savings Account Frozen programming Function-based Central Montana')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (96, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 9, 30, N'Sleek deposit withdrawal white Garden calculating Money Market Account RSS Credit Card Account')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (97, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 7, 27, N'Clothing connecting back up synergies algorithm blockchains blue hacking Kuwaiti Dinar')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (98, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 5, 20, N'red deposit plum Supervisor Representative bypassing Ergonomic Plastic Chips purple Costa Rican Colon')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (99, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 10, 32, N'Zimbabwe Industrial hack Congo Berkshire deposit solution-oriented Svalbard & Jan Mayen Islands Handmade')
GO
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (100, 1, 0, CAST(N'2022-06-12 13:17:49.7585287' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 6, 37, N'deposit Valley Bedfordshire policy Generic Frozen Table Manager Tools payment synthesize')
INSERT [dbo].[Comments] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [UserId], [ProductId], [CommentText]) VALUES (101, 1, 0, CAST(N'2022-06-12 13:22:37.1834012' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 1, N'Neki novi komentar')
SET IDENTITY_INSERT [dbo].[Comments] OFF
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (11, 1, 1)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (12, 2, 1)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (24, 4, 2)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (27, 7, 2)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (28, 8, 2)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (31, 1, 3)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (33, 3, 3)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (34, 4, 3)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (61, 1, 6)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (63, 3, 6)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (69, 9, 6)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (72, 2, 7)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (78, 8, 7)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (99, 9, 9)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (105, 5, 10)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (111, 1, 11)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (112, 2, 11)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (118, 8, 11)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (119, 9, 11)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (124, 4, 12)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (126, 6, 12)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (132, 2, 13)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (136, 6, 13)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (138, 8, 13)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (144, 4, 14)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (152, 2, 15)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (162, 2, 16)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (163, 3, 16)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (167, 7, 16)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (176, 6, 17)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (181, 1, 18)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (182, 2, 18)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (191, 1, 19)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (193, 3, 19)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (197, 7, 19)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (198, 8, 19)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (201, 1, 20)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (210, 10, 2)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (211, 1, 21)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (212, 12, 2)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (226, 6, 22)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (227, 7, 22)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (229, 9, 22)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (255, 5, 25)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (258, 8, 25)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (264, 4, 26)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (267, 7, 26)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (277, 7, 27)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (282, 2, 28)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (286, 6, 28)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (294, 4, 29)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (299, 9, 29)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (301, 1, 30)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (304, 4, 30)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (309, 9, 30)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (311, 11, 3)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (312, 2, 31)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (313, 3, 31)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (336, 6, 33)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (338, 8, 33)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (346, 6, 34)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (351, 1, 35)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (352, 2, 35)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (354, 4, 35)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (368, 8, 36)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (371, 1, 37)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (373, 3, 37)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (381, 1, 38)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (385, 5, 38)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (391, 1, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (392, 2, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (393, 3, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (397, 7, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (398, 8, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (402, 2, 40)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (407, 7, 40)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (410, 10, 4)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (411, 11, 4)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (412, 12, 4)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (419, 9, 41)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (421, 1, 42)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (433, 3, 43)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (437, 7, 43)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (447, 7, 44)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (453, 3, 45)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (455, 5, 45)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (458, 8, 45)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (459, 9, 45)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (461, 1, 46)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (462, 2, 46)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (471, 1, 47)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (474, 4, 47)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (489, 9, 48)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (499, 9, 49)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (502, 2, 50)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (509, 9, 50)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (712, 12, 7)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (811, 11, 8)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (812, 12, 8)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (911, 11, 9)
GO
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (912, 12, 9)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1010, 10, 10)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1211, 11, 12)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1212, 12, 12)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1312, 12, 13)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1510, 10, 15)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1611, 11, 16)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1710, 10, 17)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (1810, 10, 18)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2012, 12, 20)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2110, 10, 21)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2310, 10, 23)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2412, 12, 24)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2810, 10, 28)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (2912, 12, 29)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3011, 11, 30)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3110, 10, 31)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3310, 10, 33)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3410, 10, 34)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3511, 11, 35)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3712, 12, 37)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3811, 11, 38)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3910, 10, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (3911, 11, 39)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (4410, 10, 44)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (4412, 12, 44)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (4710, 10, 47)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (4711, 11, 47)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (4812, 12, 48)
INSERT [dbo].[Likes] ([Id], [UserId], [ProductId]) VALUES (5011, 11, 50)
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (1, N'likes')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (2, N'comments')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (3, N'update-profile')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (4, N'create-product')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (5, N'update-product')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (6, N'delete-product')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (7, N'change-status')
INSERT [dbo].[Permissions] ([Id], [Name]) VALUES (8, N'use-admin-panel')
SET IDENTITY_INSERT [dbo].[Permissions] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (1, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Investor Flats', 2, 0, CAST(265870.00 AS Decimal(18, 2)), CAST(374788.00 AS Decimal(18, 2)), CAST(382.00 AS Decimal(18, 2)), N'1997')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (2, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'invoice salmon', 6, 0, CAST(543311.00 AS Decimal(18, 2)), CAST(202857.00 AS Decimal(18, 2)), CAST(323.00 AS Decimal(18, 2)), N'1972')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (3, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'plum PCI', 6, 0, CAST(85532.00 AS Decimal(18, 2)), CAST(165030.00 AS Decimal(18, 2)), CAST(330.00 AS Decimal(18, 2)), N'1963')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (4, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Triple-buffered Gateway', 5, 1, CAST(97048.00 AS Decimal(18, 2)), CAST(364138.00 AS Decimal(18, 2)), CAST(243.00 AS Decimal(18, 2)), N'2019')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (5, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Movies, Automotive & Books Kiribati', 4, 1, CAST(231646.00 AS Decimal(18, 2)), CAST(177569.00 AS Decimal(18, 2)), CAST(179.00 AS Decimal(18, 2)), N'1994')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (6, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'capacitor backing up', 5, 1, CAST(219474.00 AS Decimal(18, 2)), CAST(177300.00 AS Decimal(18, 2)), CAST(260.00 AS Decimal(18, 2)), N'1986')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (7, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'leverage override', 5, 1, CAST(539543.00 AS Decimal(18, 2)), CAST(292665.00 AS Decimal(18, 2)), CAST(264.00 AS Decimal(18, 2)), N'2018')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (8, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'fuchsia relationships', 5, 0, CAST(202888.00 AS Decimal(18, 2)), CAST(260820.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)), N'2020')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (9, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Minnesota AI', 4, 1, CAST(306505.00 AS Decimal(18, 2)), CAST(126203.00 AS Decimal(18, 2)), CAST(166.00 AS Decimal(18, 2)), N'2013')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (10, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Regional protocol', 6, 0, CAST(181076.00 AS Decimal(18, 2)), CAST(184960.00 AS Decimal(18, 2)), CAST(310.00 AS Decimal(18, 2)), N'2004')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (11, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'array orchid', 1, 1, CAST(203586.00 AS Decimal(18, 2)), CAST(265433.00 AS Decimal(18, 2)), CAST(357.00 AS Decimal(18, 2)), N'1980')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (12, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Unbranded Metal Shoes azure', 1, 0, CAST(357111.00 AS Decimal(18, 2)), CAST(208541.00 AS Decimal(18, 2)), CAST(183.00 AS Decimal(18, 2)), N'1979')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (13, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Plains neural', 2, 1, CAST(135650.00 AS Decimal(18, 2)), CAST(343355.00 AS Decimal(18, 2)), CAST(167.00 AS Decimal(18, 2)), N'1968')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (14, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'1080p Intelligent Concrete Bike', 3, 1, CAST(448821.00 AS Decimal(18, 2)), CAST(334208.00 AS Decimal(18, 2)), CAST(392.00 AS Decimal(18, 2)), N'1963')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (15, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Cambridgeshire Nakfa', 6, 0, CAST(542456.00 AS Decimal(18, 2)), CAST(227817.00 AS Decimal(18, 2)), CAST(322.00 AS Decimal(18, 2)), N'2014')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (16, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'e-markets Customer', 6, 0, CAST(129997.00 AS Decimal(18, 2)), CAST(324189.00 AS Decimal(18, 2)), CAST(221.00 AS Decimal(18, 2)), N'2010')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (17, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Refined Wooden Sausages Branch', 5, 0, CAST(231246.00 AS Decimal(18, 2)), CAST(195107.00 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), N'2002')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (18, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Burundi Franc Soft', 1, 0, CAST(20874.00 AS Decimal(18, 2)), CAST(239752.00 AS Decimal(18, 2)), CAST(361.00 AS Decimal(18, 2)), N'1969')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (19, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'strategy bleeding-edge', 4, 1, CAST(343774.00 AS Decimal(18, 2)), CAST(232049.00 AS Decimal(18, 2)), CAST(281.00 AS Decimal(18, 2)), N'1976')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (20, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Persistent multi-tasking', 3, 1, CAST(515798.00 AS Decimal(18, 2)), CAST(337441.00 AS Decimal(18, 2)), CAST(303.00 AS Decimal(18, 2)), N'2015')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (21, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Oval Metal', 6, 1, CAST(592645.00 AS Decimal(18, 2)), CAST(239674.00 AS Decimal(18, 2)), CAST(339.00 AS Decimal(18, 2)), N'2016')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (22, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'connect Unbranded Granite Bike', 5, 0, CAST(10119.00 AS Decimal(18, 2)), CAST(321862.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), N'1999')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (23, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Viaduct bluetooth', 3, 1, CAST(326271.00 AS Decimal(18, 2)), CAST(223953.00 AS Decimal(18, 2)), CAST(254.00 AS Decimal(18, 2)), N'1963')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (24, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'open-source Awesome', 1, 0, CAST(280657.00 AS Decimal(18, 2)), CAST(176784.00 AS Decimal(18, 2)), CAST(305.00 AS Decimal(18, 2)), N'1962')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (25, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Buckinghamshire open-source', 5, 1, CAST(174828.00 AS Decimal(18, 2)), CAST(204371.00 AS Decimal(18, 2)), CAST(198.00 AS Decimal(18, 2)), N'1980')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (26, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Bedfordshire US Dollar', 3, 1, CAST(130668.00 AS Decimal(18, 2)), CAST(212548.00 AS Decimal(18, 2)), CAST(215.00 AS Decimal(18, 2)), N'1995')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (27, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Branch teal', 1, 1, CAST(522363.00 AS Decimal(18, 2)), CAST(270330.00 AS Decimal(18, 2)), CAST(232.00 AS Decimal(18, 2)), N'1993')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (28, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'well-modulated Lithuanian Litas', 5, 0, CAST(432991.00 AS Decimal(18, 2)), CAST(162713.00 AS Decimal(18, 2)), CAST(94.00 AS Decimal(18, 2)), N'1974')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (29, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Savings Account deposit', 1, 0, CAST(226911.00 AS Decimal(18, 2)), CAST(334337.00 AS Decimal(18, 2)), CAST(356.00 AS Decimal(18, 2)), N'2021')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (30, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Mission cross-platform', 5, 0, CAST(304683.00 AS Decimal(18, 2)), CAST(354778.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), N'1987')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (31, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'salmon Oklahoma', 2, 0, CAST(510419.00 AS Decimal(18, 2)), CAST(137493.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), N'1968')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (32, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Ville Computers & Automotive', 2, 0, CAST(240965.00 AS Decimal(18, 2)), CAST(133614.00 AS Decimal(18, 2)), CAST(317.00 AS Decimal(18, 2)), N'1972')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (33, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Riel Somoni', 1, 0, CAST(346272.00 AS Decimal(18, 2)), CAST(371766.00 AS Decimal(18, 2)), CAST(282.00 AS Decimal(18, 2)), N'1986')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (34, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Small 3rd generation', 4, 1, CAST(220005.00 AS Decimal(18, 2)), CAST(331724.00 AS Decimal(18, 2)), CAST(327.00 AS Decimal(18, 2)), N'1978')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (35, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'back-end Product', 1, 1, CAST(287108.00 AS Decimal(18, 2)), CAST(181798.00 AS Decimal(18, 2)), CAST(356.00 AS Decimal(18, 2)), N'1970')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (36, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Jamaican Dollar Practical', 4, 1, CAST(475227.00 AS Decimal(18, 2)), CAST(280943.00 AS Decimal(18, 2)), CAST(283.00 AS Decimal(18, 2)), N'2000')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (37, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Gorgeous Rubber Computer online', 3, 0, CAST(363706.00 AS Decimal(18, 2)), CAST(128428.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), N'2018')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (38, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Lead Ergonomic Steel Ball', 4, 0, CAST(309661.00 AS Decimal(18, 2)), CAST(308131.00 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)), N'1977')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (39, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Direct Liaison', 3, 0, CAST(262746.00 AS Decimal(18, 2)), CAST(117555.00 AS Decimal(18, 2)), CAST(261.00 AS Decimal(18, 2)), N'1975')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (40, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'support Global', 2, 0, CAST(285206.00 AS Decimal(18, 2)), CAST(258183.00 AS Decimal(18, 2)), CAST(278.00 AS Decimal(18, 2)), N'1966')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (41, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ivory Engineer', 1, 1, CAST(183177.00 AS Decimal(18, 2)), CAST(327966.00 AS Decimal(18, 2)), CAST(297.00 AS Decimal(18, 2)), N'1993')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (42, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'program panel', 6, 0, CAST(174645.00 AS Decimal(18, 2)), CAST(288693.00 AS Decimal(18, 2)), CAST(325.00 AS Decimal(18, 2)), N'1970')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (43, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'RSS compressing', 2, 0, CAST(438544.00 AS Decimal(18, 2)), CAST(351140.00 AS Decimal(18, 2)), CAST(186.00 AS Decimal(18, 2)), N'2020')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (44, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Tactics Trace', 4, 0, CAST(420509.00 AS Decimal(18, 2)), CAST(141799.00 AS Decimal(18, 2)), CAST(99.00 AS Decimal(18, 2)), N'1966')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (45, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'synthesizing sky blue', 2, 1, CAST(454965.00 AS Decimal(18, 2)), CAST(154757.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), N'2006')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (46, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Health AI', 6, 1, CAST(192836.00 AS Decimal(18, 2)), CAST(311166.00 AS Decimal(18, 2)), CAST(374.00 AS Decimal(18, 2)), N'2006')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (47, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Outdoors & Music drive', 5, 0, CAST(387065.00 AS Decimal(18, 2)), CAST(108308.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), N'2014')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (48, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Dam Concrete', 3, 1, CAST(123947.00 AS Decimal(18, 2)), CAST(364206.00 AS Decimal(18, 2)), CAST(243.00 AS Decimal(18, 2)), N'1978')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (49, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'portal system-worthy', 2, 1, CAST(201012.00 AS Decimal(18, 2)), CAST(341510.00 AS Decimal(18, 2)), CAST(214.00 AS Decimal(18, 2)), N'2021')
INSERT [dbo].[Products] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name], [TypeProductId], [IsAir], [Km], [Kb], [Ks], [Made]) VALUES (50, 1, 0, CAST(N'2022-06-12 13:17:49.5585285' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Oregon feed', 3, 1, CAST(271454.00 AS Decimal(18, 2)), CAST(158576.00 AS Decimal(18, 2)), CAST(206.00 AS Decimal(18, 2)), N'1994')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (1, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Limuzina')
INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (2, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Karavan')
INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (3, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Hedžbek')
INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (4, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Kabriolet')
INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (5, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Kupe')
INSERT [dbo].[ProductTypes] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Name]) VALUES (6, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Dzip')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
SET IDENTITY_INSERT [dbo].[RolePermissions] ON 

INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (1, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (2, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 2)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (3, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 1, 3)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (4, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 1)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (5, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 2)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (6, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 3)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (7, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 4)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (8, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 5)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (9, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 6)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (10, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 7)
INSERT [dbo].[RolePermissions] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [RoleId], [PermissionId]) VALUES (11, 0, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, 8)
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Users')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (1, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Admin', N'admin@mercedes.com', N'admin12345', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (2, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Korisnik', N'korisnik@mercedes.com', N'korisnik12345', 1)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (3, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Dominic14', N'Dominic74@gmail.com', N'媷鎋轐琠㝃쌤໔ㅴ◯ᅦ翲彃', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (4, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Neal.Howe39', N'Neal.Howe@hotmail.com', N'賋恝䛟巋ণ럫�蝹擃ꆝ䐸䓮๭ꊜ䈐', 1)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (5, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Martha_Erdman10', N'Martha_Erdman@gmail.com', N'级ㅋ봂甹倌䡍ͱⲳ샶ᚨ彙㦼㥕坒匎', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (6, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Terrance_Russel53', N'Terrance.Russel@hotmail.com', N'ﶮ껨懵欧쵲�䟿肋ꀨ밧ᐿ�', 1)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (7, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Ruth_Boyle15', N'Ruth79@hotmail.com', N'⫫�듸֗Ｂ竎ფ⩎䁰띸㞞ﴊ勦', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (8, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Carol48', N'Carol_Rath56@hotmail.com', N'㭤낦䔇鍟č辠驋㩜俵', 1)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (9, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Christine_Rohan', N'Christine51@hotmail.com', N'影뜱�葙�淴㫮腗욚侉嬂ҽ⍎⇐뮌', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (10, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Travis_Bartell', N'Travis.Bartell@yahoo.com', N'瓯葮ꉬ宴竁仜憵쟌莹ᓒ奆䱔', 1)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (11, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Sherman.Schowalter3', N'Sherman_Schowalter@hotmail.com', N'㧆䖗勺㻧釨䆠楕퓪௵i©䡪渮̭呀', 2)
INSERT [dbo].[Users] ([Id], [IsActive], [IsDeleted], [CreatedAt], [ModifiedAt], [DeletedAt], [Username], [Email], [Password], [RoleId]) VALUES (12, 1, 0, CAST(N'2022-06-12 13:17:49.2985281' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Kari15', N'Kari6@hotmail.com', N'ꍓ퓼摿哫澅⃝ලȴ﷮胪빕஧뾵ⴈ', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_CommentLikes_CommentId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommentLikes_CommentId] ON [dbo].[CommentLikes]
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommentLikes_UserId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommentLikes_UserId] ON [dbo].[CommentLikes]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ProductId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ProductId] ON [dbo].[Comments]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_UserId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserId] ON [dbo].[Comments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Likes_ProductId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Likes_ProductId] ON [dbo].[Likes]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Likes_UserId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Likes_UserId] ON [dbo].[Likes]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ImageId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ImageId] ON [dbo].[ProductImages]
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductTypeId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductTypeId] ON [dbo].[ProductImages]
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_TypeProductId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_TypeProductId] ON [dbo].[Products]
(
	[TypeProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RolePermissions_PermissionId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_RolePermissions_PermissionId] ON [dbo].[RolePermissions]
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RolePermissions_RoleId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_RolePermissions_RoleId] ON [dbo].[RolePermissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 6/12/2022 1:28:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_CommentLikes_Comments_CommentId] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[CommentLikes] CHECK CONSTRAINT [FK_CommentLikes_Comments_CommentId]
GO
ALTER TABLE [dbo].[CommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_CommentLikes_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[CommentLikes] CHECK CONSTRAINT [FK_CommentLikes_Users_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_UserId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Products_ProductId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Users_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Images_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Images_ImageId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_ProductTypes_ProductTypeId] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_ProductTypes_ProductTypeId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes_TypeProductId] FOREIGN KEY([TypeProductId])
REFERENCES [dbo].[ProductTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductTypes_TypeProductId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Permissions_PermissionId] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Permissions_PermissionId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Roles_RoleId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [mercedes] SET  READ_WRITE 
GO
