-- first set sequence value, otherwise the inserts will fail due to violation of the pk_constraint
SELECT setval('cuyahoga_moduletype_moduletypeid_seq', (SELECT count(*) FROM cuyahoga_moduletype));

INSERT INTO cuyahoga_moduletype (name, assemblyname, classname, path, editpath, inserttimestamp, updatetimestamp) VALUES ('Search', 'Cuyahoga.Modules', 'Cuyahoga.Modules.Search.SearchModule', 'Modules/Search/Search.ascx', NULL, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324');
INSERT INTO cuyahoga_moduletype (name, assemblyname, classname, path, editpath, inserttimestamp, updatetimestamp) VALUES ('LanguageSwitcher', 'Cuyahoga.Modules', 'Cuyahoga.Modules.LanguageSwitcher.LanguageSwitcherModule', 'Modules/LanguageSwitcher/LanguageSwitcher.ascx', NULL, '2004-10-02 14:36:28.324', '2004-10-02 14:36:28.324');