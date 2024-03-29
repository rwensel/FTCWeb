CREATE TABLE [dbo].[identity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[identifier] [nvarchar](max) NOT NULL,
	[app_id] [int] NOT NULL,
	[auth_type] [int] NOT NULL,
	[env] [int] NOT NULL,
 CONSTRAINT [PK_identity_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[identity]  WITH CHECK ADD  CONSTRAINT [FK_identity_apps] FOREIGN KEY([app_id])
REFERENCES [dbo].[apps] ([id])
GO
ALTER TABLE [dbo].[identity] CHECK CONSTRAINT [FK_identity_apps]
GO
ALTER TABLE [dbo].[identity]  WITH CHECK ADD  CONSTRAINT [FK_identity_auth_type] FOREIGN KEY([auth_type])
REFERENCES [dbo].[auth_type] ([id])
GO
ALTER TABLE [dbo].[identity] CHECK CONSTRAINT [FK_identity_auth_type]
GO
