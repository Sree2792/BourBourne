
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/28/2018 16:28:12
-- Generated from EDMX file: C:\Users\sjay0010\Source\Repos\BourBourne\WorkCopyV1.0\Models\FitBourneDBV1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FitnessBourneMasterDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_MemberTableFitnessClub]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MemberTables] DROP CONSTRAINT [FK_MemberTableFitnessClub];
GO
IF OBJECT_ID(N'[dbo].[FK_FitnessClubAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FitnessClubs] DROP CONSTRAINT [FK_FitnessClubAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationTableAddressTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LocationTables] DROP CONSTRAINT [FK_LocationTableAddressTable];
GO
IF OBJECT_ID(N'[dbo].[FK_MemberTableAddressTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MemberTables] DROP CONSTRAINT [FK_MemberTableAddressTable];
GO
IF OBJECT_ID(N'[dbo].[FK_EventMemberMemberTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventMembers] DROP CONSTRAINT [FK_EventMemberMemberTable];
GO
IF OBJECT_ID(N'[dbo].[FK_EventMemberEventTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventMembers] DROP CONSTRAINT [FK_EventMemberEventTable];
GO
IF OBJECT_ID(N'[dbo].[FK_EventTableEventLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventLocations] DROP CONSTRAINT [FK_EventTableEventLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_EventLocationLocationTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventLocations] DROP CONSTRAINT [FK_EventLocationLocationTable];
GO
IF OBJECT_ID(N'[dbo].[FK_EventForEditEventLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventLocations] DROP CONSTRAINT [FK_EventForEditEventLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationEventForEdit]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_NotificationEventForEdit];
GO
IF OBJECT_ID(N'[dbo].[FK_Notification_For_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotifForMembers] DROP CONSTRAINT [FK_Notification_For_Event];
GO
IF OBJECT_ID(N'[dbo].[FK_NotifForMembersMemberTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotifForMembers] DROP CONSTRAINT [FK_NotifForMembersMemberTable];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FitnessClubs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FitnessClubs];
GO
IF OBJECT_ID(N'[dbo].[AddressTables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AddressTables];
GO
IF OBJECT_ID(N'[dbo].[MemberTables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MemberTables];
GO
IF OBJECT_ID(N'[dbo].[LocationTables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocationTables];
GO
IF OBJECT_ID(N'[dbo].[EventTables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventTables];
GO
IF OBJECT_ID(N'[dbo].[EventMembers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventMembers];
GO
IF OBJECT_ID(N'[dbo].[EventLocations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventLocations];
GO
IF OBJECT_ID(N'[dbo].[EventForEdits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventForEdits];
GO
IF OBJECT_ID(N'[dbo].[Notifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notifications];
GO
IF OBJECT_ID(N'[dbo].[NotifForMembers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotifForMembers];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FitnessClubs'
CREATE TABLE [dbo].[FitnessClubs] (
    [Fit_Id] int IDENTITY(1,1) NOT NULL,
    [Fit_Name] nvarchar(max)  NOT NULL,
    [Fit_Lat] nvarchar(max)  NOT NULL,
    [Fit_Long] nvarchar(max)  NOT NULL,
    [Fit_Addr_Id] nvarchar(max)  NOT NULL,
    [Fit_Admin_Id] nvarchar(max)  NOT NULL,
    [AddressTable_Addr_Id] int  NOT NULL
);
GO

-- Creating table 'AddressTables'
CREATE TABLE [dbo].[AddressTables] (
    [Addr_Id] int IDENTITY(1,1) NOT NULL,
    [Addr_Unit_No] nvarchar(max)  NOT NULL,
    [Addr_House_No] nvarchar(max)  NOT NULL,
    [Addr_Street_Name] nvarchar(max)  NOT NULL,
    [Addr_Suburb_Name] nvarchar(max)  NOT NULL,
    [Addr_City_Name] nvarchar(max)  NOT NULL,
    [Addr_State_Name] nvarchar(max)  NOT NULL,
    [Addr_ZipCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MemberTables'
CREATE TABLE [dbo].[MemberTables] (
    [Mem_Id] int IDENTITY(1,1) NOT NULL,
    [Mem_Cntct_No] nvarchar(max)  NOT NULL,
    [Mem_Email_Id] nvarchar(max)  NOT NULL,
    [Mem_LoginId] nvarchar(max)  NOT NULL,
    [FitnessClubFit_Id] int  NOT NULL,
    [Mem_Addr_Id] nvarchar(max)  NOT NULL,
    [AddressTable_Addr_Id] int  NOT NULL
);
GO

-- Creating table 'LocationTables'
CREATE TABLE [dbo].[LocationTables] (
    [Loc_Id] int IDENTITY(1,1) NOT NULL,
    [Loc_Lat] nvarchar(max)  NOT NULL,
    [Loc_Long] nvarchar(max)  NOT NULL,
    [Loc_Name] nvarchar(max)  NOT NULL,
    [Loc_Addr_Id] nvarchar(max)  NOT NULL,
    [AddressTable_Addr_Id] int  NOT NULL
);
GO

-- Creating table 'EventTables'
CREATE TABLE [dbo].[EventTables] (
    [Event_Id] int IDENTITY(1,1) NOT NULL,
    [Event_Type] nvarchar(max)  NOT NULL,
    [Event_Is_Private] nvarchar(max)  NOT NULL,
    [Event_DateTime] nvarchar(max)  NOT NULL,
    [Event_Is_CheckIn] nvarchar(max)  NOT NULL,
    [Event_Capacity] nvarchar(max)  NOT NULL,
    [Event_Owner] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EventMembers'
CREATE TABLE [dbo].[EventMembers] (
    [EventMember_Id] int IDENTITY(1,1) NOT NULL,
    [MemberTableMem_Id] int  NOT NULL,
    [EventTableEvent_Id] int  NOT NULL
);
GO

-- Creating table 'EventLocations'
CREATE TABLE [dbo].[EventLocations] (
    [Event_Loc_Id] int IDENTITY(1,1) NOT NULL,
    [EventTableEvent_Id] int  NOT NULL,
    [LocationTableLoc_Id] int  NOT NULL,
    [EventForEditEdit_Event_Id] int  NOT NULL
);
GO

-- Creating table 'EventForEdits'
CREATE TABLE [dbo].[EventForEdits] (
    [Edit_Event_Id] int IDENTITY(1,1) NOT NULL,
    [Org_Event_Id] nvarchar(max)  NOT NULL,
    [Edit_Req_DateTime] nvarchar(max)  NOT NULL,
    [Created_By] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Notifications'
CREATE TABLE [dbo].[Notifications] (
    [Notif_Id] int IDENTITY(1,1) NOT NULL,
    [Notif_For_Event] nvarchar(max)  NOT NULL,
    [Event] nvarchar(max)  NOT NULL,
    [EventForEdit_Edit_Event_Id] int  NOT NULL
);
GO

-- Creating table 'NotifForMembers'
CREATE TABLE [dbo].[NotifForMembers] (
    [NFM_Id] int IDENTITY(1,1) NOT NULL,
    [NotificationNotif_Id] int  NOT NULL,
    [Member_Response] nvarchar(max)  NOT NULL,
    [MemberTableMem_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Fit_Id] in table 'FitnessClubs'
ALTER TABLE [dbo].[FitnessClubs]
ADD CONSTRAINT [PK_FitnessClubs]
    PRIMARY KEY CLUSTERED ([Fit_Id] ASC);
GO

-- Creating primary key on [Addr_Id] in table 'AddressTables'
ALTER TABLE [dbo].[AddressTables]
ADD CONSTRAINT [PK_AddressTables]
    PRIMARY KEY CLUSTERED ([Addr_Id] ASC);
GO

-- Creating primary key on [Mem_Id] in table 'MemberTables'
ALTER TABLE [dbo].[MemberTables]
ADD CONSTRAINT [PK_MemberTables]
    PRIMARY KEY CLUSTERED ([Mem_Id] ASC);
GO

-- Creating primary key on [Loc_Id] in table 'LocationTables'
ALTER TABLE [dbo].[LocationTables]
ADD CONSTRAINT [PK_LocationTables]
    PRIMARY KEY CLUSTERED ([Loc_Id] ASC);
GO

-- Creating primary key on [Event_Id] in table 'EventTables'
ALTER TABLE [dbo].[EventTables]
ADD CONSTRAINT [PK_EventTables]
    PRIMARY KEY CLUSTERED ([Event_Id] ASC);
GO

-- Creating primary key on [EventMember_Id] in table 'EventMembers'
ALTER TABLE [dbo].[EventMembers]
ADD CONSTRAINT [PK_EventMembers]
    PRIMARY KEY CLUSTERED ([EventMember_Id] ASC);
GO

-- Creating primary key on [Event_Loc_Id] in table 'EventLocations'
ALTER TABLE [dbo].[EventLocations]
ADD CONSTRAINT [PK_EventLocations]
    PRIMARY KEY CLUSTERED ([Event_Loc_Id] ASC);
GO

-- Creating primary key on [Edit_Event_Id] in table 'EventForEdits'
ALTER TABLE [dbo].[EventForEdits]
ADD CONSTRAINT [PK_EventForEdits]
    PRIMARY KEY CLUSTERED ([Edit_Event_Id] ASC);
GO

-- Creating primary key on [Notif_Id] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [PK_Notifications]
    PRIMARY KEY CLUSTERED ([Notif_Id] ASC);
GO

-- Creating primary key on [NFM_Id] in table 'NotifForMembers'
ALTER TABLE [dbo].[NotifForMembers]
ADD CONSTRAINT [PK_NotifForMembers]
    PRIMARY KEY CLUSTERED ([NFM_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FitnessClubFit_Id] in table 'MemberTables'
ALTER TABLE [dbo].[MemberTables]
ADD CONSTRAINT [FK_MemberTableFitnessClub]
    FOREIGN KEY ([FitnessClubFit_Id])
    REFERENCES [dbo].[FitnessClubs]
        ([Fit_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MemberTableFitnessClub'
CREATE INDEX [IX_FK_MemberTableFitnessClub]
ON [dbo].[MemberTables]
    ([FitnessClubFit_Id]);
GO

-- Creating foreign key on [AddressTable_Addr_Id] in table 'FitnessClubs'
ALTER TABLE [dbo].[FitnessClubs]
ADD CONSTRAINT [FK_FitnessClubAddress]
    FOREIGN KEY ([AddressTable_Addr_Id])
    REFERENCES [dbo].[AddressTables]
        ([Addr_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FitnessClubAddress'
CREATE INDEX [IX_FK_FitnessClubAddress]
ON [dbo].[FitnessClubs]
    ([AddressTable_Addr_Id]);
GO

-- Creating foreign key on [AddressTable_Addr_Id] in table 'LocationTables'
ALTER TABLE [dbo].[LocationTables]
ADD CONSTRAINT [FK_LocationTableAddressTable]
    FOREIGN KEY ([AddressTable_Addr_Id])
    REFERENCES [dbo].[AddressTables]
        ([Addr_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationTableAddressTable'
CREATE INDEX [IX_FK_LocationTableAddressTable]
ON [dbo].[LocationTables]
    ([AddressTable_Addr_Id]);
GO

-- Creating foreign key on [AddressTable_Addr_Id] in table 'MemberTables'
ALTER TABLE [dbo].[MemberTables]
ADD CONSTRAINT [FK_MemberTableAddressTable]
    FOREIGN KEY ([AddressTable_Addr_Id])
    REFERENCES [dbo].[AddressTables]
        ([Addr_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MemberTableAddressTable'
CREATE INDEX [IX_FK_MemberTableAddressTable]
ON [dbo].[MemberTables]
    ([AddressTable_Addr_Id]);
GO

-- Creating foreign key on [MemberTableMem_Id] in table 'EventMembers'
ALTER TABLE [dbo].[EventMembers]
ADD CONSTRAINT [FK_EventMemberMemberTable]
    FOREIGN KEY ([MemberTableMem_Id])
    REFERENCES [dbo].[MemberTables]
        ([Mem_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventMemberMemberTable'
CREATE INDEX [IX_FK_EventMemberMemberTable]
ON [dbo].[EventMembers]
    ([MemberTableMem_Id]);
GO

-- Creating foreign key on [EventTableEvent_Id] in table 'EventMembers'
ALTER TABLE [dbo].[EventMembers]
ADD CONSTRAINT [FK_EventMemberEventTable]
    FOREIGN KEY ([EventTableEvent_Id])
    REFERENCES [dbo].[EventTables]
        ([Event_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventMemberEventTable'
CREATE INDEX [IX_FK_EventMemberEventTable]
ON [dbo].[EventMembers]
    ([EventTableEvent_Id]);
GO

-- Creating foreign key on [EventTableEvent_Id] in table 'EventLocations'
ALTER TABLE [dbo].[EventLocations]
ADD CONSTRAINT [FK_EventTableEventLocation]
    FOREIGN KEY ([EventTableEvent_Id])
    REFERENCES [dbo].[EventTables]
        ([Event_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventTableEventLocation'
CREATE INDEX [IX_FK_EventTableEventLocation]
ON [dbo].[EventLocations]
    ([EventTableEvent_Id]);
GO

-- Creating foreign key on [LocationTableLoc_Id] in table 'EventLocations'
ALTER TABLE [dbo].[EventLocations]
ADD CONSTRAINT [FK_EventLocationLocationTable]
    FOREIGN KEY ([LocationTableLoc_Id])
    REFERENCES [dbo].[LocationTables]
        ([Loc_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventLocationLocationTable'
CREATE INDEX [IX_FK_EventLocationLocationTable]
ON [dbo].[EventLocations]
    ([LocationTableLoc_Id]);
GO

-- Creating foreign key on [EventForEditEdit_Event_Id] in table 'EventLocations'
ALTER TABLE [dbo].[EventLocations]
ADD CONSTRAINT [FK_EventForEditEventLocation]
    FOREIGN KEY ([EventForEditEdit_Event_Id])
    REFERENCES [dbo].[EventForEdits]
        ([Edit_Event_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventForEditEventLocation'
CREATE INDEX [IX_FK_EventForEditEventLocation]
ON [dbo].[EventLocations]
    ([EventForEditEdit_Event_Id]);
GO

-- Creating foreign key on [EventForEdit_Edit_Event_Id] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [FK_NotificationEventForEdit]
    FOREIGN KEY ([EventForEdit_Edit_Event_Id])
    REFERENCES [dbo].[EventForEdits]
        ([Edit_Event_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationEventForEdit'
CREATE INDEX [IX_FK_NotificationEventForEdit]
ON [dbo].[Notifications]
    ([EventForEdit_Edit_Event_Id]);
GO

-- Creating foreign key on [NotificationNotif_Id] in table 'NotifForMembers'
ALTER TABLE [dbo].[NotifForMembers]
ADD CONSTRAINT [FK_Notification_For_Event]
    FOREIGN KEY ([NotificationNotif_Id])
    REFERENCES [dbo].[Notifications]
        ([Notif_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Notification_For_Event'
CREATE INDEX [IX_FK_Notification_For_Event]
ON [dbo].[NotifForMembers]
    ([NotificationNotif_Id]);
GO

-- Creating foreign key on [MemberTableMem_Id] in table 'NotifForMembers'
ALTER TABLE [dbo].[NotifForMembers]
ADD CONSTRAINT [FK_NotifForMembersMemberTable]
    FOREIGN KEY ([MemberTableMem_Id])
    REFERENCES [dbo].[MemberTables]
        ([Mem_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotifForMembersMemberTable'
CREATE INDEX [IX_FK_NotifForMembersMemberTable]
ON [dbo].[NotifForMembers]
    ([MemberTableMem_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------