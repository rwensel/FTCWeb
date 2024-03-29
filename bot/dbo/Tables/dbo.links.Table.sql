CREATE TABLE [dbo].[links](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[link] [nvarchar](max) NULL,
	[header] [nvarchar](max) NULL,
	[data] [nvarchar](max) NULL,
	[app_id] [int] NOT NULL,
 CONSTRAINT [PK_links] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
