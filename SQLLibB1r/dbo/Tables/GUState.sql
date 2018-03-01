CREATE TABLE [dbo].[GUState] (
    [id]                INT                IDENTITY (1, 1) NOT NULL,
    [GU_ID]             INT                NOT NULL,
    [Sotr_ID]           INT                NULL,
    [Date]              DATE               NOT NULL,
    [Availability]      BIT                NOT NULL,
    [DocumentName]      NVARCHAR (500)     NULL,
    [ProgramName]       NVARCHAR (500)     NULL,
    [ts]                ROWVERSION         NOT NULL,
    [vneseno_IP]        VARCHAR (50)       CONSTRAINT [DF_GUState_vneseno_IP] DEFAULT (CONVERT([char](15),connectionproperty('client_net_address'),(0))) NOT NULL,
    [vneseno_Host_Name] NVARCHAR (50)      CONSTRAINT [DF_GUState_vneseno_Host_name] DEFAULT (host_name()) NOT NULL,
    [vneseno_user]      NVARCHAR (50)      CONSTRAINT [DF_GUState_vneseno_user] DEFAULT (suser_sname()) NOT NULL,
    [vneseno]           DATETIMEOFFSET (7) CONSTRAINT [DF_GUState_vneseno] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_GUState] PRIMARY KEY CLUSTERED ([id] ASC)
);

