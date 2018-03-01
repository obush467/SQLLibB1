CREATE TABLE [dbo].[Adress_datamosruAO] (
    [id]        INT              IDENTITY (1, 1) NOT NULL,
    [Adress_id] INT              NOT NULL,
    [global_id] INT              NOT NULL,
    [houseguid] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Adress_datamosruAO] PRIMARY KEY NONCLUSTERED ([id] ASC),
    CONSTRAINT [FK_Adress_datamosruAO_adress] FOREIGN KEY ([Adress_id]) REFERENCES [dbo].[adress] ([id])
);


GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20180228-084350]
    ON [dbo].[Adress_datamosruAO]([Adress_id] ASC, [global_id] ASC, [houseguid] ASC);


GO
CREATE STATISTICS [_dta_stat_2087886705_1_2]
    ON [dbo].[Adress_datamosruAO]([id], [Adress_id]);


GO
CREATE STATISTICS [_dta_stat_2087886705_1_3_2]
    ON [dbo].[Adress_datamosruAO]([id], [global_id], [Adress_id]);

