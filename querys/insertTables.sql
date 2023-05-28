USE [quiz]

-- USER
INSERT INTO [User] (
    [Id],
    [Name],
    [NickName],
    [Email],
    [HashPassword]
) VALUES (
    NEWID(),
    'Rafael Nascimento',
    'rndoia',
    'rafael@gmail.com',
    'aakmcam-asxmmam'
)
GO

-- QUIZ
INSERT INTO [Quiz] (
    [Id],
    [Title],
    [Description],
    [ThumbImage],
    [UserId],
    [CategoryId]
) VALUES (
    NEWID(),
    'Champions League',
    'Tudo sobre o campeonata mais disputado da europa',
    'asfmasfmaf.jpg',
    '488e7509-84cd-4005-8f73-b56e4db9222b',
    'f63037a6-3a09-480d-9aa0-0631017a1343'
);

-- CATEGORY
INSERT INTO [Category] (
    [Id],
    [Title],
    [Description]
) VALUES (
    NEWID(),
    'Futebol',
    'Conhecimentos sobre futebol internacional'
)

-- QUESTIONS 
-- 1
INSERT INTO [Questions] (
    [Id],
    [Title],
    [QuizId],
    [Order],
    [Alternative1],
    [Alternative2],
    [Alternative3],
    [Alternative4],
    [Alternative5],
    [AlternativeCorrectly]
) VALUES (
    NEWID(),
    'Quem e o maior ganhador do campeonato',
    '5827806b-dd5d-45ec-bcb5-fb40f44ace46',
    1,
    'Real Madrid',
    'Barcelona',
    'Milan',
    'Juventus',
    'Manchester City',
    1
)
GO

-- 2
INSERT INTO [Questions] (
    [Id],
    [Title],
    [QuizId],
    [Order],
    [Alternative1],
    [Alternative2],
    [Alternative3],
    [Alternative4],
    [Alternative5],
    [AlternativeCorrectly]
) VALUES (
    NEWID(),
    'skfmskmsdfksdmfsdkmfsdkfm',
    '5827806b-dd5d-45ec-bcb5-fb40f44ace46',
    2,
    'claasl,',
    'skfmfmmf',
    'klmffmskm',
    'qwmkxn',
    'aslmxasp',
    2
)
GO

-- 3
INSERT INTO [Questions] (
    [Id],
    [Title],
    [QuizId],
    [Order],
    [Alternative1],
    [Alternative2],
    [Alternative3],
    [Alternative4],
    [Alternative5],
    [AlternativeCorrectly]
) VALUES (
    NEWID(),
    'skfmskmsdfksdmfsdkmfsdkfm',
    '5827806b-dd5d-45ec-bcb5-fb40f44ace46',
    3,
    'claasl,',
    'skfmfmmf',
    'klmffmskm',
    'qwmkxn',
    'aslmxasp',
    2
)
GO

-- 4
INSERT INTO [Questions] (
    [Id],
    [Title],
    [QuizId],
    [Order],
    [Alternative1],
    [Alternative2],
    [Alternative3],
    [Alternative4],
    [Alternative5],
    [AlternativeCorrectly]
) VALUES (
    NEWID(),
    'skfmskmsdfksdmfsdkmfsdkfm',
    '5827806b-dd5d-45ec-bcb5-fb40f44ace46',
    4,
    'claasl,',
    'skfmfmmf',
    'klmffmskm',
    'qwmkxn',
    'aslmxasp',
    2
)
GO

-- 5
INSERT INTO [Questions] (
    [Id],
    [Title],
    [QuizId],
    [Order],
    [Alternative1],
    [Alternative2],
    [Alternative3],
    [Alternative4],
    [Alternative5],
    [AlternativeCorrectly]
) VALUES (
    NEWID(),
    'skfmskmsdfksdmfsdkmfsdkfm',
    '5827806b-dd5d-45ec-bcb5-fb40f44ace46',
    5,
    'claasl,',
    'skfmfmmf',
    'klmffmskm',
    'qwmkxn',
    'aslmxasp',
    2
)
GO

-- ...