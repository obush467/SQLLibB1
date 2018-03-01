CREATE SERVICE [TargetService]
    AUTHORIZATION [dbo]
    ON QUEUE [dbo].[TargetQueue]
    ([TestContract]);

