CREATE TABLE [dbo].[GU_zamechaniya] (
    [ID]       UNIQUEIDENTIFIER   CONSTRAINT [DF_GU_zamechaniya_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [GU_ID]    UNIQUEIDENTIFIER   NOT NULL,
    [Sotr_ID]  UNIQUEIDENTIFIER   NULL,
    [zamtext]  NVARCHAR (4000)    NOT NULL,
    [inserted] DATETIMEOFFSET (7) CONSTRAINT [DF_GU_zamechaniya_inserted] DEFAULT (sysdatetimeoffset()) NOT NULL,
    [tsc]      ROWVERSION         NOT NULL,
    [reverse]  DATETIMEOFFSET (7) NULL,
    [order]    INT                NULL,
    CONSTRAINT [PK_GU_zamechaniya] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171107-180418]
    ON [dbo].[GU_zamechaniya]([GU_ID] ASC)
    INCLUDE([ID], [order], [zamtext], [tsc], [reverse]);

