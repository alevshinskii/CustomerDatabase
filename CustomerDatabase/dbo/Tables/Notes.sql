CREATE TABLE [dbo].[Notes] (
    [NoteId]     INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT            NOT NULL,
    [Note]       NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([NoteId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);

