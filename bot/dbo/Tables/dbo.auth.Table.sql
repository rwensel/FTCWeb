CREATE TABLE [dbo].[auth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[identifier] [int] NOT NULL,
	[tokens] [int] NOT NULL,
 CONSTRAINT [PK_auth] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth]  WITH CHECK ADD  CONSTRAINT [FK_auth_tokens] FOREIGN KEY([tokens])
REFERENCES [dbo].[tokens] ([id])
GO
ALTER TABLE [dbo].[auth] CHECK CONSTRAINT [FK_auth_tokens]
GO
