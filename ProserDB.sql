create database ProserDB
GO
--CREATED BY Muhammet Çin(Software Developer)
use ProserDB
GO

create table ServerPCs
(
 ServerID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(50),
 Sell_By nvarchar(20),
 Constraint PK_ServerID Primary Key(ServerID)
)
GO
create table Camera_Discs
(
 Camera_DiscID Int Identity,
 Brand nvarchar(30),
 Capacity nvarchar(20),
 Serial_No nvarchar(50),
 Sell_By nvarchar(20),
 Constraint PK_Camera_DiscID Primary Key(Camera_DiscID)
)
GO
create table Camera_Infos
(
 CameraInfoID Int Identity,
 IPAdress nvarchar(20),
 DDNS nvarchar(30),
 Username nvarchar(30),
 Passwords nvarchar(30),
 Constraint PK_CameraInfoID Primary Key(CameraInfoID)
)
GO
create table Cameras
( 
 CameraID Int Identity,
 VideoRecorder nvarchar(20),
 Camera_Model nvarchar(50),
 Camera_Number nvarchar(10),
 Disc_Capasity nvarchar(20),
 Date_of_Installation nvarchar(20),
 Camera_DiscID Int,
 CameraInfoID Int,
 Constraint PK_CameraID Primary Key(CameraID),
 Constraint FK_Camera_DiscID Foreign Key(Camera_DiscID) References Camera_Discs(Camera_DiscID),
 Constraint FK_CameraInfoID Foreign Key(CameraInfoID) References Camera_Infos(CameraInfoID)
)
GO
create table Computers
( 
 ComputerID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(30),
 Sell_By nvarchar(20),
 Constraint PK_ComputerID Primary Key(ComputerID)
)
GO
create table Consumables
( 
 ProductID Int Identity,
 Brand nvarchar(20),
 Model nvarchar(20),
 Sell_By nvarchar(20),
 Constraint PK_ProductID Primary Key (ProductID)
)
GO
create table Domain
(
 DomainID Int Identity,
 FTPName nvarchar(30),
 Hosting nvarchar(30),
 Start_Time nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_DomainID Primary Key(DomainID)
)
GO
create table Hostings
(
 HostingID Int Identity,
 FTPName nvarchar(30),
 Hosting nvarchar(30),
 Start_Time nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_HostingID Primary Key(HostingID)
)
GO
create table Mails
( 
 MailID Int Identity,
 FTPName nvarchar(30),
 Domain nvarchar(30),
 Mail_Number nvarchar(30),
 Start_Time nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_MailID Primary Key(MailID)
)
GO
create table Licenses
( 
 LicenseID Int Identity,
 Brand nvarchar(30),
 Version_Model nvarchar(50),
 Start_Time nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_LicenseID Primary Key(LicenseID)
)
GO
create table Firewalls
( 
 FirewallID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(30),
 Sell_By nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_FirewallID Primary Key(FirewallID)
)
GO
create table Antiviruses
( 
 AntivirusID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(30),
 Sell_By nvarchar(20),
 Finish_Time nvarchar(20),
 Constraint PK_AntivurusID Primary Key(AntivirusID)
)
GO
create table Alarm_Batteries
(
 Alarm_BatteryID Int Identity,
 Brand nvarchar(30),
 Voltage nvarchar(30),
 Sell_By nvarchar(20),
 Constraint PK_Alarm_BatteryID Primary Key(Alarm_BatteryID)
)
GO
create table Alarm_Infos
(
 Alarm_InfoID Int Identity,
 IPAdress nvarchar(30),
 Site_Name nvarchar(30),
 Site_Mail nvarchar(30),
 Module_Password nvarchar(30),
 Constraint PK_Alarm_InfoID Primary Key(Alarm_InfoID)
)
create table Alarms
(
 AlarmID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(30),
 Date_of_Installation nvarchar(20),
 Alarm_BatteryID Int,
 Alarm_InfoID Int,
 Constraint PK_AlarmID Primary Key(AlarmID),
 Constraint FK_Alarm_BatteryID Foreign Key(Alarm_BatteryID) References Alarm_Batteries(Alarm_BatteryID),
 Constraint FK_Alarm_InfoID Foreign Key(Alarm_InfoID) References Alarm_Infos(Alarm_InfoID)
)
GO
create table UPS_Batteries
(
 UPS_BatteryID Int Identity,
 Brand nvarchar(30),
 Voltage nvarchar(30),
 Sell_By nvarchar(20),
 Constraint PK_UPS_BatteryID Primary Key(UPS_BatteryID)
)
GO
create table UPS
(
 UPSID Int Identity,
 Brand nvarchar(30),
 Model nvarchar(30),
 Sell_By nvarchar(20),
 UPS_BatteryID Int,
 Constraint PK_UPSID Primary Key(UPSID),
 Constraint FK_UPS_BatteryID Foreign Key(UPS_BatteryID) References UPS_Batteries(UPS_BatteryID)
)
GO
create table Employees
(
EmployeeID Int Identity,
Employee_Name nvarchar(50),
Passwords nvarchar(50),
IsApproved Bit,
Constraint PK_EmployeeID Primary Key(EmployeeID)
)
GO
create table Technical
(
 TechID Int Identity,
 Product_Name nvarchar(50),
 Product_Brand nvarchar(50),
 Product_Company nvarchar(50),
 Person nvarchar(50)
 Constraint PK_TechID Primary Key(TechID)
)
GO
create table Companies
(
 CompanyID Int Identity,
 Company_Name nvarchar(30),
 Adress nvarchar(250),
 Phone nvarchar(30),
 Mail nvarchar(50),
 ServerID Int,
 CameraID Int,
 ComputerID Int,
 ProductID Int,
 DomainID Int,
 HostingID Int,
 MailID Int,
 LicenseID Int,
 FirewallID Int,
 AntivirusID Int,
 AlarmID Int,
 UPSID Int,
 EmployeeID Int,
 Constraint PK_CompanyID Primary Key(CompanyID),
 Constraint FK_ServerID Foreign Key(ServerID) References ServerPCs(ServerID),
 Constraint FK_KameraID Foreign Key(CameraID) References Cameras(CameraID),
 Constraint FK_BilgisayarID Foreign Key(ComputerID) References Computers(ComputerID),
 Constraint FK_ProductID Foreign Key(ProductID) References Consumables(ProductID),
 Constraint FK_DomainID Foreign Key(DomainID) References Domain(DomainID),
 Constraint FK_HostingID Foreign Key(HostingID) References Hostings(HostingID),
 Constraint FK_MailID Foreign Key(MailID) References Mails(MailID),
 Constraint FK_LicenseID Foreign Key(LicenseID) References Licenses(LicenseID),
 Constraint FK_FirewallID Foreign Key(FirewallID) References Firewalls(FirewallID),
 Constraint FK_AntivirusID Foreign Key(AntivirusID) References Antiviruses(AntivirusID),
 Constraint FK_AlarmID Foreign Key(AlarmID) References Alarms(AlarmID),
 Constraint FK_UPSID Foreign Key(UPSID) References UPS(UPSID),
 Constraint FK_EmployeeID Foreign Key(EmployeeID) References Employees(EmployeeID)
)

--CREATED BY Muhammet Çin(Software Developer)