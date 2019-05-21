CREATE PARTITION FUNCTION [PF_TransactionDate] ([date]) 
AS RANGE RIGHT 
FOR VALUES (N'2014-01-01', N'2015-01-01', N'2016-01-01', N'2017-01-01')
GO
