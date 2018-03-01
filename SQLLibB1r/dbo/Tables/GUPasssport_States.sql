CREATE TABLE [dbo].[GUPasssport_States] (
    [id]             UNIQUEIDENTIFIER   CONSTRAINT [DF_GUPasssport_States_id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [GUPasssport_ID] UNIQUEIDENTIFIER   NOT NULL,
    [State]          NVARCHAR (50)      NOT NULL,
    [startdate]      DATETIMEOFFSET (7) CONSTRAINT [DF_GUPasssport_States_State_Date] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [enddate]        DATETIMEOFFSET (7) NULL,
    [insertdate]     DATETIMEOFFSET (7) CONSTRAINT [DF_GUPasssport_States_insertdate] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [updatedate]     DATETIMEOFFSET (7) NULL,
    [Sotr_ID]        UNIQUEIDENTIFIER   CONSTRAINT [DF_GUPasssport_States_Sotr_ID] DEFAULT ([dbo].[currentUser_ID]()) NOT NULL,
    [tsc]            ROWVERSION         NOT NULL,
    CONSTRAINT [PK_GUPasssport_States] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_GUPasssport_States_GUPassports] FOREIGN KEY ([GUPasssport_ID]) REFERENCES [dbo].[GUPassports] ([id]),
    CONSTRAINT [FK_GUPasssport_States_sotr] FOREIGN KEY ([Sotr_ID]) REFERENCES [dbo].[sotr] ([Sotr_ID])
);

