DECLARE @moduletypeid int

SELECT @moduletypeid = moduletypeid FROM cuyahoga_moduletype WHERE [name] = 'Articles'

INSERT INTO cuyahoga_modulesetting (moduletypeid, [name], friendlyname, settingdatatype, iscustomtype, isrequired) 
VALUES (@moduletypeid, 'SORT_BY', 'Sort by', 'Cuyahoga.Modules.Articles.SortBy', 1, 1)

INSERT INTO cuyahoga_modulesetting (moduletypeid, [name], friendlyname, settingdatatype, iscustomtype, isrequired) 
VALUES (@moduletypeid, 'SORT_DIRECTION', 'Sort direction', 'Cuyahoga.Modules.Articles.SortDirection', 1, 1)
GO

INSERT INTO cuyahoga_sectionsetting (sectionid, [name], value)
	SELECT sectionid, 'SORT_BY', 'DateOnline'
	FROM cuyahoga_section s
		INNER JOIN cuyahoga_moduletype m on m.moduletypeid = s.moduletypeid
	WHERE m.name = 'Articles'

GO

INSERT INTO cuyahoga_sectionsetting (sectionid, [name], value)
	SELECT sectionid, 'SORT_DIRECTION', 'DESC'
	FROM cuyahoga_section s
		INNER JOIN cuyahoga_moduletype m on m.moduletypeid = s.moduletypeid
	WHERE m.name = 'Articles'

GO

UPDATE cuyahoga_version SET major = 0, minor = 9, patch = 0 WHERE assembly = 'Cuyahoga.Modules'
go