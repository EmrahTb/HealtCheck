USE [HealtCheck]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[ClaimValue] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[RoleId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Name] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
	[NormalizedName] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[ClaimValue] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[UserId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[ProviderKey] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[ProviderDisplayName] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[UserId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[RoleId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
	[NormalizedUserName] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
	[PasswordHash] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[PhoneNumber] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) COLLATE Turkish_CI_AS NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[LoginProvider] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[Name] [nvarchar](450) COLLATE Turkish_CI_AS NOT NULL,
	[Value] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteLogs]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NULL,
	[StatusCode] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_SiteLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sites]    Script Date: 22.03.2020 19:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[SiteUrl] [nvarchar](250) COLLATE Turkish_CI_AS NULL,
	[Minute] [int] NULL,
	[Status] [bit] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c6818012-5651-456e-b96d-13aa6822534d', 0, N'ff227369-9d65-4e1e-bc89-5723ed6a6d1e', N'admin@admin.com', 0, 1, NULL, N'ADMIN@ADMIN.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEMLLuCeQTnVg8V605ihm5Q2NCyneQVZv5fmgAzqF99hmFrBZSzkRYxThAjW7CD9JNA==', NULL, 0, N'7OJWK5KFWKMB6ISE6VHDX2KPSRZSIEKW', 0, N'Admin')
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'c6818012-5651-456e-b96d-13aa6822534d', N'[AspNetUserStore]', N'AuthenticatorKey', N'2XTVREEL4OBGAN37VKI6I6OXS3X3LYAU')
GO
SET IDENTITY_INSERT [dbo].[SiteLogs] ON 
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (21, 1, 200, CAST(N'2020-03-22T16:21:13.003' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (22, 1, 200, CAST(N'2020-03-22T16:24:00.587' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (23, 1, 200, CAST(N'2020-03-22T16:27:00.773' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (24, 1, 200, CAST(N'2020-03-22T16:30:00.977' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (25, 1, 200, CAST(N'2020-03-22T16:33:01.127' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (26, 1, 200, CAST(N'2020-03-22T16:36:01.343' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (27, 1, 200, CAST(N'2020-03-22T16:59:42.663' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (28, 1, 200, CAST(N'2020-03-22T17:01:42.613' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (29, 1, 200, CAST(N'2020-03-22T17:01:42.613' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (30, 1, 400, CAST(N'2020-03-22T17:02:13.640' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (31, 1, 200, CAST(N'2020-03-22T17:02:39.417' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (32, 1, 200, CAST(N'2020-03-22T17:03:02.597' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (33, 1, 200, CAST(N'2020-03-22T17:04:14.477' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (34, 1, 200, CAST(N'2020-03-22T17:08:31.287' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (35, 1, 200, CAST(N'2020-03-22T17:08:31.287' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (36, 1, 401, CAST(N'2020-03-22T17:09:14.320' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (37, 1, 200, CAST(N'2020-03-22T17:11:17.363' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (38, 1, 200, CAST(N'2020-03-22T17:11:17.363' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (39, 1, 200, CAST(N'2020-03-22T17:13:22.287' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (40, 1, 200, CAST(N'2020-03-22T17:13:22.287' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (41, 1, 200, CAST(N'2020-03-22T17:13:22.287' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (42, 1, 200, CAST(N'2020-03-22T17:14:05.510' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (43, 1, 200, CAST(N'2020-03-22T17:14:58.247' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (44, 1, 200, CAST(N'2020-03-22T17:15:40.490' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (45, 1, 200, CAST(N'2020-03-22T17:16:10.463' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (46, 1, 200, CAST(N'2020-03-22T17:17:10.580' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (47, 1, 200, CAST(N'2020-03-22T17:26:51.187' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (48, 1, 200, CAST(N'2020-03-22T17:29:04.703' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (49, 1, 200, CAST(N'2020-03-22T17:32:08.250' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (50, 7, 200, CAST(N'2020-03-22T17:34:06.820' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (51, 1, 200, CAST(N'2020-03-22T17:35:06.690' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (52, 1, 200, CAST(N'2020-03-22T18:08:44.727' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (53, 7, 200, CAST(N'2020-03-22T18:08:45.170' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (54, 1007, 200, CAST(N'2020-03-22T18:08:45.420' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (55, 1, 200, CAST(N'2020-03-22T18:11:12.670' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (56, 7, 200, CAST(N'2020-03-22T18:11:12.837' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (57, 1007, 200, CAST(N'2020-03-22T18:12:27.650' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (58, 1, 200, CAST(N'2020-03-22T18:14:10.767' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (59, 7, 200, CAST(N'2020-03-22T18:14:10.967' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (61, 7, 200, CAST(N'2020-03-22T18:22:30.560' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (62, 1007, 200, CAST(N'2020-03-22T18:22:43.707' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (63, 1, 200, CAST(N'2020-03-22T18:25:14.470' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (64, 7, 200, CAST(N'2020-03-22T18:25:15.843' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (65, 1, 200, CAST(N'2020-03-22T18:31:58.273' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (66, 7, 200, CAST(N'2020-03-22T18:31:58.670' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (67, 1007, 200, CAST(N'2020-03-22T18:31:58.923' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (68, 1008, 200, CAST(N'2020-03-22T18:33:10.000' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (69, 1, 200, CAST(N'2020-03-22T18:34:10.257' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (70, 7, 200, CAST(N'2020-03-22T18:34:10.447' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (71, 1008, 200, CAST(N'2020-03-22T18:34:10.567' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (72, 1007, 200, CAST(N'2020-03-22T18:35:10.240' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (73, 1008, 200, CAST(N'2020-03-22T18:36:07.750' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (74, 1, 200, CAST(N'2020-03-22T18:37:21.067' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (75, 7, 200, CAST(N'2020-03-22T18:37:21.507' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (76, 1008, 200, CAST(N'2020-03-22T18:37:21.630' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (77, 1007, 200, CAST(N'2020-03-22T18:38:35.060' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (78, 1008, 401, CAST(N'2020-03-22T18:38:35.217' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (79, 1, 200, CAST(N'2020-03-22T18:40:06.050' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (80, 7, 200, CAST(N'2020-03-22T18:40:06.257' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (81, 1008, 200, CAST(N'2020-03-22T18:40:06.367' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (82, 1, 200, CAST(N'2020-03-22T18:42:32.740' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (83, 7, 200, CAST(N'2020-03-22T18:42:33.190' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (84, 1007, 200, CAST(N'2020-03-22T18:42:33.437' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (85, 1008, 200, CAST(N'2020-03-22T18:42:33.553' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (86, 1008, 200, CAST(N'2020-03-22T18:44:02.460' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (87, 1, 200, CAST(N'2020-03-22T18:45:16.197' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (88, 7, 200, CAST(N'2020-03-22T18:45:16.667' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (89, 1008, 200, CAST(N'2020-03-22T18:45:16.817' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (90, 1007, 200, CAST(N'2020-03-22T18:46:14.920' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (91, 1008, 200, CAST(N'2020-03-22T18:47:14.887' AS DateTime))
GO
INSERT [dbo].[SiteLogs] ([Id], [SiteId], [StatusCode], [CreatedDate]) VALUES (92, 1009, 200, CAST(N'2020-03-22T18:47:15.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SiteLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Sites] ON 
GO
INSERT [dbo].[Sites] ([Id], [SiteName], [SiteUrl], [Minute], [Status], [UpdatedDate]) VALUES (1, N'Google', N'http://www.google.com', 2, 1, CAST(N'2020-03-22T18:45:16.317' AS DateTime))
GO
INSERT [dbo].[Sites] ([Id], [SiteName], [SiteUrl], [Minute], [Status], [UpdatedDate]) VALUES (7, N'Hürriyet', N'http://www.hurriyet.com', 2, 1, CAST(N'2020-03-22T18:45:16.673' AS DateTime))
GO
INSERT [dbo].[Sites] ([Id], [SiteName], [SiteUrl], [Minute], [Status], [UpdatedDate]) VALUES (1007, N'Milliyet', N'http://www.milliyet.com', 3, 1, CAST(N'2020-03-22T18:46:14.927' AS DateTime))
GO
INSERT [dbo].[Sites] ([Id], [SiteName], [SiteUrl], [Minute], [Status], [UpdatedDate]) VALUES (1008, N'Haber7', N'http://www.haber7.com', 1, 1, CAST(N'2020-03-22T18:47:14.890' AS DateTime))
GO
INSERT [dbo].[Sites] ([Id], [SiteName], [SiteUrl], [Minute], [Status], [UpdatedDate]) VALUES (1009, N'Gazete Vatan', N'http://www.gazetevatan.com', 1, 1, CAST(N'2020-03-22T18:47:15.003' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sites] OFF
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
