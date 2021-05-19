CREATE TABLE [dbo].[CourseTable] (
    [Course_ID]           INT  NOT NULL,
    [Course_Name]         TEXT NULL,
    [Course_Descriuption] TEXT NULL,
    [Professor_Name]      TEXT NULL,
    [Lecture_Hours]       INT  NULL,
    [Registered_Students] INT  NULL,
    [Review_of_Course]    INT  NULL,
    [Book_Link]           TEXT NULL,
    PRIMARY KEY CLUSTERED ([Course_ID] ASC)
);
