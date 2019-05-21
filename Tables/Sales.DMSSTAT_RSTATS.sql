CREATE TABLE [Sales].[DMSSTAT_RSTATS]
(
[runid] [varchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL,
[ruleid] [varchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL,
[ruleblock] [int] NOT NULL,
[rulenum] [int] NOT NULL,
[rulesubscript] [int] NOT NULL,
[ruletype] [varchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL,
[rulecreated] [datetime] NOT NULL,
[ruleupdated] [datetime] NOT NULL,
[secondsactive] [int] NOT NULL,
[rulestatus] [char] (1) COLLATE Latin1_General_100_CI_AS NOT NULL,
[rulesource] [varchar] (250) COLLATE Latin1_General_100_CI_AS NULL,
[ruletarget] [varchar] (250) COLLATE Latin1_General_100_CI_AS NULL,
[rowoperations] [int] NULL,
[coloperations] [int] NULL,
[rulePrevRPN] [int] NULL,
[ruleRPN] [int] NULL
) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_DMSSTAT_RSTATS] ON [Sales].[DMSSTAT_RSTATS] ([runid], [ruleid]) ON [USERDATA]
GO
