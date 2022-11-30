USE [master]
GO

CREATE DATABASE [CadreScanDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CadreScanDB_Data', FILENAME = N'c:\Data\DataFiles\CadreScanDB.mdf' , SIZE = 9804KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'CadreScanDB_Log', FILENAME = N'c:\Data\LogFiles\CadreScanDB_log.ldf' , SIZE = 9804KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

USE [CadreScanDB]
GO

CREATE TABLE [dbo].[Toolmark](
	[ToolmarkID] [int] IDENTITY(1,1) NOT NULL,
	[CaseNumber] [varchar](128) NULL,
	[Category] [varchar](100) NULL,
	[Email] [nvarchar](128) NULL,
	[DateOfCollected] [datetime] NULL,
	[ImageFileName] [varchar](150) NULL,
	[Note] [varchar](255) NULL
 CONSTRAINT [PK_ToolmarkID] PRIMARY KEY CLUSTERED 
(
	[ToolmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


--column: ToolmarkID,CaseNumber,Category,Email,Note,ImageFileName,DateOfCollected 


	--ToolmarkID
	--CaseNumber
	--Category
	--Email
	--DateOfCollected
	--ImageFileName
	--Note

	--CategoryID
	--Type



select * from [dbo].[Category]
select * from [dbo].[Toolmark]

