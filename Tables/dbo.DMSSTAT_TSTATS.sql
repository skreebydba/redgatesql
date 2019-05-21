CREATE TABLE [dbo].[DMSSTAT_TSTATS]
(
[runid] [varchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL,
[ruleid] [varchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL,
[statscreated] [datetime] NOT NULL,
[statsupdated] [datetime] NOT NULL,
[ruletype] [varchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL,
[ruleblock] [int] NOT NULL,
[rulenum] [int] NOT NULL,
[rulesubscript] [int] NOT NULL,
[controllerid] [varchar] (50) COLLATE Latin1_General_100_CI_AS NULL,
[tabledatabase] [varchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL,
[tableschema] [varchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL,
[tablename] [varchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL,
[tablecolumn] [varchar] (250) COLLATE Latin1_General_100_CI_AS NULL,
[rowoperations] [int] NULL,
[coloperations] [int] NULL
) ON [USERDATA]
GO
CREATE NONCLUSTERED INDEX [IX_DMSSTAT_TSTATS_A] ON [dbo].[DMSSTAT_TSTATS] ([runid], [ruleid]) ON [USERDATA]
GO
