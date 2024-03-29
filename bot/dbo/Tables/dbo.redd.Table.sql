CREATE TABLE [dbo].[redd](
	[guid] [varchar](max) NULL,
	[author] [varchar](max) NULL,
	[subreddit] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[url] [varchar](max) NULL,
	[permalink] [varchar](max) NULL,
	[full_link] [varchar](max) NULL,
	[num_comments] [float] NULL,
	[over_18] [float] NULL,
	[score] [float] NULL,
	[date] [float] NULL,
	[hash] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO