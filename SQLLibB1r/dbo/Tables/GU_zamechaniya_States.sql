CREATE TABLE [dbo].[GU_zamechaniya_States] (
    [ID]                UNIQUEIDENTIFIER CONSTRAINT [DF_GU_zamechaniya_States_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [GU_zamechaniya_ID] UNIQUEIDENTIFIER NOT NULL,
    [State]             NVARCHAR (50)    NOT NULL,
    [StateDate]         DATE             CONSTRAINT [DF_GU_zamechaniya_States_StateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_GU_zamechaniya_States] PRIMARY KEY CLUSTERED ([ID] ASC)
);

