CREATE TABLE [dbo].[environment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[env] [nchar](10) NOT NULL,
 CONSTRAINT [PK_environment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[environment]  WITH CHECK ADD  CONSTRAINT [FK_environment_environment] FOREIGN KEY([Id])
REFERENCES [dbo].[environment] ([Id])
GO
ALTER TABLE [dbo].[environment] CHECK CONSTRAINT [FK_environment_environment]
GO
