



CREATE TABLE cm_statichtml(
statichtmlid int identity(1,1) NOT NULL CONSTRAINT PK_statichtml PRIMARY KEY,
sectionid int NOT NULL,
createdby int NOT NULL,
modifiedby int NULL,
title nvarchar(255) NULL,
content ntext NOT NULL,
inserttimestamp datetime DEFAULT current_timestamp NOT NULL,
updatetimestamp datetime DEFAULT current_timestamp NOT NULL)
go

ALTER TABLE cm_statichtml
ADD CONSTRAINT FK_statichtml_section_sectionid
FOREIGN KEY (sectionid) REFERENCES cuyahoga_section (sectionid)
go

ALTER TABLE cm_statichtml
ADD CONSTRAINT FK_statichtml_user_createdby
FOREIGN KEY (createdby) REFERENCES cuyahoga_user (userid)
go

ALTER TABLE cm_statichtml
ADD CONSTRAINT FK_statichtml_user_modifiedby
FOREIGN KEY (modifiedby) REFERENCES cuyahoga_user (userid)
go

-- DATA
SET DATEFORMAT ymd

SET IDENTITY_INSERT cuyahoga_moduletype ON

GO

INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (1, 'StaticHtml', 'Cuyahoga.Modules', 'Cuyahoga.Modules.StaticHtml.StaticHtmlModule', 'Modules/StaticHtml/StaticHtml.ascx', 'Modules/StaticHtml/EditHtml.aspx', 1, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (3, 'User', 'Cuyahoga.Modules', 'Cuyahoga.Modules.User.UserModule', 'Modules/User/User.ascx', NULL, 1, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (4, 'Search', 'Cuyahoga.Modules', 'Cuyahoga.Modules.Search.SearchModule', 'Modules/Search/Search.ascx', NULL, 1, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (5, 'LanguageSwitcher', 'Cuyahoga.Modules', 'Cuyahoga.Modules.LanguageSwitcher.LanguageSwitcherModule', 'Modules/LanguageSwitcher/LanguageSwitcher.ascx', NULL, 1, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (7, 'UserProfile', 'Cuyahoga.Modules', 'Cuyahoga.Modules.User.ProfileModule', 'Modules/User/EditProfile.ascx', NULL, 1, '2005-10-20 14:36:28.324', '2005-10-20 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (8, 'SearchInput', 'Cuyahoga.Modules', 'Cuyahoga.Modules.Search.SearchInputModule', 'Modules/Search/SearchInput.ascx', NULL, 1, '2005-10-20 14:36:28.324', '2005-10-20 14:36:28.324')
INSERT INTO cuyahoga_moduletype (moduletypeid, name, assemblyname, classname, path, editpath, autoactivate, inserttimestamp, updatetimestamp) VALUES (9, 'Sitemap', 'Cuyahoga.Modules', 'Cuyahoga.Modules.Sitemap.SitemapModule', 'Modules/Sitemap/SitemapControl.ascx', NULL, 1, '2005-10-20 14:36:28.324', '2005-10-20 14:36:28.324')

GO

SET IDENTITY_INSERT cuyahoga_moduletype OFF

GO

INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (3, 'SHOW_REGISTER', 'Show register link', 'System.Boolean', 0, 0)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (3, 'SHOW_RESET_PASSWORD', 'Show reset password link', 'System.Boolean', 0, 0)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (3, 'SHOW_EDIT_PROFILE', 'Show edit profile link', 'System.Boolean', 0, 0)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (4, 'RESULTS_PER_PAGE', 'Results per page', 'System.Int32', 0, 1)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (4, 'SHOW_INPUT_PANEL', 'Show search input box', 'System.Boolean', 0, 0)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (5, 'DISPLAY_MODE', 'Display mode', 'Cuyahoga.Modules.LanguageSwitcher.DisplayMode', 1, 1)
INSERT INTO cuyahoga_modulesetting (moduletypeid, name, friendlyname, settingdatatype, iscustomtype, isrequired) VALUES (5, 'REDIRECT_TO_USER_LANGUAGE', 'Redirect user to browser language when possible?', 'System.Boolean', 0, 1)

GO

INSERT INTO cuyahoga_version (assembly, major, minor, patch) VALUES ('Cuyahoga.Modules', 1, 7, 0)

GO