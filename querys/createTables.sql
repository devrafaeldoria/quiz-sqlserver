USE [quiz]

CREATE TABLE [User] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(120) NOT NULL,
    [NickName] NVARCHAR(20) NULL,
    [Email] NVARCHAR(180) NOT NULL,
    [HashPassword] NVARCHAR(120) NOT NULL,
    [CreateDate] DATETIME NOT NULL DEFAULT(GETDATE()),
    [Quizzes] INT NULL, -- COUNT OF ALL QUIZZES THE USER HAS
    CONSTRAINT [PK_User] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Category] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(20) NOT NULL,
    [Description] TEXT NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Quiz] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(100) NOT NULL,
    [Description] TEXT NOT NULL,
    [ThumbImage] NVARCHAR(100) NOT NULL,
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [CategoryId] UNIQUEIDENTIFIER NOT NULL,
    [Plays] INT NULL DEFAULT(0),
    [CreateDate] DATETIME NOT NULL DEFAULT(GETDATE()),
    CONSTRAINT [PK_Quiz] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_QuizCategory] FOREIGN KEY ([CategoryId]) REFERENCES [Category] ([Id]),
    CONSTRAINT [FK_QuizUserId] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id])
);
GO

CREATE TABLE [Questions] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(100) NOT NULL,
    [QuizId] UNIQUEIDENTIFIER NOT NULL,
    [Order] TINYINT NOT NULL,
    [Alternative1] TEXT NOT NULL,
    [Alternative2] TEXT NOT NULL,
    [Alternative3] TEXT NOT NULL,
    [Alternative4] TEXT NOT NULL,
    [Alternative5] TEXT NOT NULL,
    [AlternativeCorrectly] TINYINT NOT NULL,
    CONSTRAINT [PK_Questions] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Questions] FOREIGN KEY ([QuizId]) REFERENCES [Quiz] ([Id])
);
GO