USE [AppDB]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Member_ID] [uniqueidentifier] NOT NULL,
	[Member_Num] [varchar](50) NULL,
	[Member_Name] [varchar](200) NULL,
	[Member_Phone] [int] NULL,
	[Member_Sex] [varchar](50) NULL,
	[Member_Birthday] [datetime] NULL,
	[Member_Photo] [varchar](200) NULL,
	[Member_UserID] [uniqueidentifier] NULL,
	[Member_Introduce] [text] NULL,
	[Member_FilePath] [varchar](200) NULL,
	[Member_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Member_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_AppLog]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AppLog](
	[AppLog_ID] [uniqueidentifier] NOT NULL,
	[AppLog_Api] [varchar](200) NULL,
	[AppLog_IP] [varchar](50) NULL,
	[AppLog_UserID] [uniqueidentifier] NULL,
	[AppLog_Parameter] [varchar](max) NULL,
	[AppLog_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_AppLog] PRIMARY KEY CLUSTERED 
(
	[AppLog_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Function]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Function](
	[Function_ID] [uniqueidentifier] NOT NULL,
	[Function_Num] [varchar](50) NULL,
	[Function_Name] [varchar](50) NULL,
	[Function_ByName] [varchar](50) NULL,
	[Function_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Function] PRIMARY KEY CLUSTERED 
(
	[Function_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_ID] [uniqueidentifier] NOT NULL,
	[Menu_Num] [varchar](50) NULL,
	[Menu_Name] [varchar](50) NULL,
	[Menu_Url] [varchar](50) NULL,
	[Menu_Icon] [varchar](50) NULL,
	[Menu_ParentID] [uniqueidentifier] NULL,
	[Menu_IsShow] [int] NULL,
	[Menu_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_MenuFunction]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_MenuFunction](
	[MenuFunction_ID] [uniqueidentifier] NOT NULL,
	[MenuFunction_MenuID] [uniqueidentifier] NULL,
	[MenuFunction_FunctionID] [uniqueidentifier] NULL,
	[MenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_MenuFunction] PRIMARY KEY CLUSTERED 
(
	[MenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Number]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Number](
	[Number_ID] [uniqueidentifier] NOT NULL,
	[Number_Num] [varchar](50) NULL,
	[Number_DataBase] [varchar](50) NULL,
	[Number_TableName] [varchar](50) NULL,
	[Number_NumField] [varchar](50) NULL,
	[Number_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Number] PRIMARY KEY CLUSTERED 
(
	[Number_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_ID] [uniqueidentifier] NOT NULL,
	[Role_Num] [varchar](50) NULL,
	[Role_Name] [varchar](50) NULL,
	[Role_Remark] [varchar](500) NULL,
	[Role_IsDelete] [int] NULL,
	[Role_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_RoleMenuFunction]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleMenuFunction](
	[RoleMenuFunction_ID] [uniqueidentifier] NOT NULL,
	[RoleMenuFunction_RoleID] [uniqueidentifier] NULL,
	[RoleMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[RoleMenuFunction_MenuID] [uniqueidentifier] NULL,
	[RoleMenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_RoleMenuFunction] PRIMARY KEY CLUSTERED 
(
	[RoleMenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_ID] [uniqueidentifier] NOT NULL,
	[User_Name] [varchar](50) NULL,
	[User_LoginName] [varchar](50) NULL,
	[User_Pwd] [varchar](100) NULL,
	[User_Email] [varchar](50) NULL,
	[User_IsDelete] [int] NULL,
	[User_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserRole](
	[UserRole_ID] [uniqueidentifier] NOT NULL,
	[UserRole_UserID] [uniqueidentifier] NULL,
	[UserRole_RoleID] [uniqueidentifier] NULL,
	[UserRole_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRole_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Member_ID], [Member_Num], [Member_Name], [Member_Phone], [Member_Sex], [Member_Birthday], [Member_Photo], [Member_UserID], [Member_Introduce], [Member_FilePath], [Member_CreateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', 131231, N'男', CAST(N'2019-07-08T11:47:24.973' AS DateTime), N'/Content/UpFile/51446921-6121-4a53-b5f3-4ef26c1f82e0.jpg', N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'<p><img src="/Admin/lib/nUeditor/upload/image/20180802/6366881296663732469581226.jpg" alt="p_big3.jpg"/></p>', N'/Content/UpFile/fc0ef283-b8c1-4fcf-851c-51141a2be661.txt', CAST(N'2018-04-25T23:00:00.000' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'80', N'打印', N'Print', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', N'10', N'能否拥有该菜单', N'Have', CAST(N'2016-06-20T13:40:29.657' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'60', N'检索', N'Search', CAST(N'2017-02-16T17:06:23.430' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', N'50', N'保存', N'Save', CAST(N'2017-04-22T13:51:52.837' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', N'40', N'删除', N'Delete', CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'20', N'添加', N'Add', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', N'70', N'导出', N'GetExcel', CAST(N'2017-02-09T16:34:14.017' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'30', N'修改', N'Edit', CAST(N'2016-06-20T13:40:43.153' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'Z-160', N'代码创建', N'/Admin/CreateCode/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:17:32.723' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'Z-130', N'菜单功能', N'/Admin/MenuFunction/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:33.997' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', N'Z-120', N'功能管理', N'/Admin/Function/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:21.087' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', N'Z', N'系统管理', NULL, N'fa fa-desktop', NULL, 1, CAST(N'2018-03-10T12:16:38.890' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'Z-100', N'用户管理', N'/Admin/User/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:03.657' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', N'Z-140', N'角色功能', N'/Admin/RoleFunction/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:46.617' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'A-100', N'会员管理', N'/Admin/Member/Index', NULL, N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, CAST(N'2018-04-25T21:36:28.533' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', N'Z-110', N'角色管理', N'/Admin/Role/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:55.290' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'Z-150', N'修改密码', N'/Admin/ChangePwd/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:17:03.810' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'Z-170', N'操作日志', N'/Admin/AppLog/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2019-07-08T21:15:41.870' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', N'A', N'基础信息', NULL, N'fa fa-cubes', NULL, 1, CAST(N'2018-04-25T21:18:09.403' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T18:37:14.633' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e2d0c07a-e74f-46f2-8991-113cd58c4785', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:32.810' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'0b81b937-fdc2-4a2c-90c4-11e9ddf3ba71', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:22:14.937' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'cfc06085-563d-488d-807a-1b766180eff9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T18:37:25.673' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7f549d57-c5d3-4ad8-bc12-1e7c99ae4de5', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8c0bf314-fa41-40d3-8d8c-20f614dd078a', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a49b958c-f00c-4c0d-b031-21190e5c74fa', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2018-04-22T15:47:38.933' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd32e240a-ab34-41a3-92fc-249dab655c3a', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'73caab90-ac89-4334-ae61-2b55f3d08826', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:54.007' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'4a99997e-ef14-414b-94a6-2f480e5b2cd2', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T18:37:14.637' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f134c325-eb68-498f-86b2-307c315eb8cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:22:14.940' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ed6454dc-3d01-47e2-86f3-40121f9c6976', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-08T18:37:25.670' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'92913243-421b-420d-9fbf-42d7db59aec9', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T18:37:14.627' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'397b5f2c-812e-431a-914d-43d318bc4242', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'6529e142-e4de-44a7-9acb-53df1796480c', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1e827ff5-b7c8-43dd-b9ed-571d376b3dce', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:22:14.940' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'26cf07df-7c4b-4c59-b091-57479a28a8ac', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'540d4cfb-1b2f-4736-80ca-5a613642b5b4', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'c6dbd0f0-db95-4251-895b-6009239106cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:22:14.937' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ef36a4f2-a70e-4ae3-923b-609910127a33', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd72a7e1a-94a2-4d7c-ba13-6727398f8e35', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'842d38fc-29a2-4a9e-8949-84d76fc6a259', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:32.803' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'afbd3366-4c4f-46b1-8f96-903cfe6f8a00', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T18:37:14.633' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e60670d2-4ade-449c-8a4b-9ad7d5179a43', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:54.003' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd6f2707f-70ab-45f0-9c57-9d11ee5078d2', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T18:37:25.670' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'2ab18520-ee93-40f1-8633-9f5b174ac14e', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'0b9170f7-e444-49a2-9f0c-a7e02ea1c33e', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd62f6c43-ae93-4d50-a6f0-b64c9cacec7b', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f0a60dc3-46ad-4fac-9a28-bd05eb8f11d6', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:22:14.947' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ffd4aebd-6283-4c52-976b-c09b70f8034b', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:22:14.947' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd54498c9-e0a7-4cb2-859d-cb07d6826679', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:21:32.803' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'42fc1519-61c2-4501-bb4e-cd160bea87a5', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'259c0396-8390-4632-be02-d02dc1c17123', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2018-07-31T13:51:51.553' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'30507f21-c866-4494-ae07-dae4d3906295', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T18:37:25.673' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d079f5a-c791-4628-b0d6-e3f7c8580a08', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'fa162511-0213-4da2-9fbf-e5f45af5b7fc', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:32.810' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8b445869-735c-4582-8af1-ec41d78a58dd', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:22:14.943' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1c127383-0c46-44ac-8784-f8ae8a6dc390', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ca5601ec-7cd9-4577-a699-fc7c3c4c1308', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:21:54.003' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9bee8a50-35bc-4198-b172-ffa341b9bc6e', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:22:14.943' AS DateTime))
INSERT [dbo].[Sys_Number] ([Number_ID], [Number_Num], [Number_DataBase], [Number_TableName], [Number_NumField], [Number_CreateTime]) VALUES (N'b5fcc999-85b9-4dce-a3fc-64b43ef82f68', N'1', NULL, N'Member', N'Member_Num', CAST(N'2018-04-25T23:00:03.723' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0001', N'超级管理员', N'拥有所有权限', 2, CAST(N'2016-06-20T10:20:10.073' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0002', N'普通用户', NULL, 1, CAST(N'2016-07-06T17:59:20.527' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'c71ba8a1-1356-4f33-a064-13bef8693343', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-07-10T21:26:19.003' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'46c71036-8e06-4d05-914b-18452bdcc8e0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-07-10T21:26:19.003' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ba7f888a-202d-44dc-ab46-ce2b6cee22cb', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', CAST(N'2019-07-10T21:26:19.007' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'b983a572-7414-48c8-949c-e46df0531930', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-07-10T21:26:19.007' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'4ef37617-d676-4a25-9b5b-e6b9231d9624', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-07-10T21:26:19.007' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'6b86daad-f9d7-4bf6-88d1-f7372ad84cb6', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-07-10T21:26:19.007' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'管理员', N'admin', N'123456', N'1396510655@qq.com', 2, CAST(N'2017-04-06T19:55:53.083' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户1', N'user', N'123', N'18123456789@live.com', NULL, CAST(N'2019-07-08T15:10:27.847' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'a5ef47f2-0d58-4193-af54-7aba7b768b60', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2018-12-12T11:36:46.700' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'4b678497-e71a-4cd8-8fd8-d385c30aa0ca', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2019-07-08T15:10:27.850' AS DateTime))
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Member_ID]  DEFAULT (newid()) FOR [Member_ID]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Member_CreateTime]  DEFAULT (getdate()) FOR [Member_CreateTime]
GO
ALTER TABLE [dbo].[Sys_AppLog] ADD  CONSTRAINT [DF_Sys_AppLog_AppLog_ID]  DEFAULT (newid()) FOR [AppLog_ID]
GO
ALTER TABLE [dbo].[Sys_AppLog] ADD  CONSTRAINT [DF_Sys_AppLog_AppLog_CreateTime]  DEFAULT (getdate()) FOR [AppLog_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Function] ADD  CONSTRAINT [DF_Sys_Function_Function_ID]  DEFAULT (newid()) FOR [Function_ID]
GO
ALTER TABLE [dbo].[Sys_Function] ADD  CONSTRAINT [DF_Sys_Function_Function_CreateTime]  DEFAULT (getdate()) FOR [Function_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Menu] ADD  CONSTRAINT [DF_Sys_Menu_Menu_ID]  DEFAULT (newid()) FOR [Menu_ID]
GO
ALTER TABLE [dbo].[Sys_Menu] ADD  CONSTRAINT [DF_Sys_Menu_Menu_CreateTime]  DEFAULT (getdate()) FOR [Menu_CreateTime]
GO
ALTER TABLE [dbo].[Sys_MenuFunction] ADD  CONSTRAINT [DF_Sys_MenuFunction_MenuFunction_ID]  DEFAULT (newid()) FOR [MenuFunction_ID]
GO
ALTER TABLE [dbo].[Sys_MenuFunction] ADD  CONSTRAINT [DF_Sys_MenuFunction_MenuFunction_CreateTime]  DEFAULT (getdate()) FOR [MenuFunction_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Number] ADD  CONSTRAINT [DF_Sys_Number_Number_ID]  DEFAULT (newid()) FOR [Number_ID]
GO
ALTER TABLE [dbo].[Sys_Number] ADD  CONSTRAINT [DF_Sys_Number_Number_CreateTime]  DEFAULT (getdate()) FOR [Number_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Role] ADD  CONSTRAINT [DF_Sys_Role_Role_ID]  DEFAULT (newid()) FOR [Role_ID]
GO
ALTER TABLE [dbo].[Sys_Role] ADD  CONSTRAINT [DF_Sys_Role_Role_CreateTime]  DEFAULT (getdate()) FOR [Role_CreateTime]
GO
ALTER TABLE [dbo].[Sys_RoleMenuFunction] ADD  CONSTRAINT [DF_Sys_RoleMenuFunction_RoleMenuFunction_ID]  DEFAULT (newid()) FOR [RoleMenuFunction_ID]
GO
ALTER TABLE [dbo].[Sys_RoleMenuFunction] ADD  CONSTRAINT [DF_Sys_RoleMenuFunction_RoleMenuFunction_CreateTime]  DEFAULT (getdate()) FOR [RoleMenuFunction_CreateTime]
GO
ALTER TABLE [dbo].[Sys_User] ADD  CONSTRAINT [DF_Sys_User_User_ID]  DEFAULT (newid()) FOR [User_ID]
GO
ALTER TABLE [dbo].[Sys_User] ADD  CONSTRAINT [DF_Sys_User_User_CreateTime]  DEFAULT (getdate()) FOR [User_CreateTime]
GO
ALTER TABLE [dbo].[Sys_UserRole] ADD  CONSTRAINT [DF_Sys_UserRole_UserRole_ID]  DEFAULT (newid()) FOR [UserRole_ID]
GO
ALTER TABLE [dbo].[Sys_UserRole] ADD  CONSTRAINT [DF_Sys_UserRole_UserRole_CreateTime]  DEFAULT (getdate()) FOR [UserRole_CreateTime]
GO
ALTER TABLE [dbo].[Sys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserRole_Sys_User] FOREIGN KEY([UserRole_UserID])
REFERENCES [dbo].[Sys_User] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_UserRole] CHECK CONSTRAINT [FK_Sys_UserRole_Sys_User]
GO
/****** Object:  StoredProcedure [dbo].[GetNumber]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNumber]
	@numfield varchar(50),--varchar(8000),         --字段名
    @tablename varchar(50)              --表名
AS
BEGIN
	DECLARE @Number int = 0
	select @Number=Number_Num from Sys_Number where Number_TableName=@tablename and Number_NumField=@numfield
    IF @Number=0 BEGIN
		insert into Sys_Number(Number_TableName,Number_NumField,Number_Num) values(@tablename,@numfield,1)
		select 1
	END
	ELSE BEGIN
		update Sys_Number set Number_Num = @Number +1 where Number_TableName=@tablename and Number_NumField=@numfield
		select (@Number +1)
	END
END





GO
/****** Object:  StoredProcedure [dbo].[PROC_SPLITPAGE]    Script Date: 2019/7/11 10:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------系统的--------------
CREATE  PROCEDURE [dbo].[PROC_SPLITPAGE]
    @SQL text,--varchar(8000),         --要执行的SQL语句
    @PAGE INT = 1,              --要显示的页码
    @PAGESIZE INT,              --每页的大小
    @PAGECOUNT INT = 0 OUT,     --总页数
    @RECORDCOUNT INT = 0 OUT    --总记录数
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @P1 INT

    EXEC SP_CURSOROPEN @P1 OUTPUT, @SQL, @SCROLLOPT = 1, @CCOPT = 1, @ROWCOUNT = @PAGECOUNT OUTPUT

    SET @RECORDCOUNT = @PAGECOUNT

    SELECT @PAGECOUNT=
        CEILING(1.0 * @PAGECOUNT / @PAGESIZE) , @PAGE = (@PAGE-1) * @PAGESIZE + 1

    EXEC SP_CURSORFETCH @P1, 16, @PAGE, @PAGESIZE 

    EXEC SP_CURSORCLOSE @P1
END





GO
