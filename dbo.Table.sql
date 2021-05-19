CREATE TABLE [dbo].[Table] (
    [Course ID]           INT  NOT NULL,
    [Course Name]         TEXT NULL,
    [Course Descriuption] TEXT NULL,
    [Professor Name]      TEXT NULL,
    [Lecture Hours]       INT  NULL,
    [Registered Students] INT  NULL,
    [Review of Course]    INT  NULL,
    [Book Link]           TEXT NULL,
    PRIMARY KEY CLUSTERED ([Course ID] ASC)
);
