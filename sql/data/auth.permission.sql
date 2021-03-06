
SET client_encoding = 'UTF8';
SET search_path = auth, pg_catalog;

INSERT INTO permission (permission, conference_permission, rank) VALUES ('account::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account::modify_own', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account::show', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account_conference_role::create', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account_conference_role::delete', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account_role::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('account_role::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('admin::login', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference::show', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_person::create', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_person::delete', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_person::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_role::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_role::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('conference_role::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('config::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('custom::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('event::create', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('event::delete', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('event::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('event::modify_own', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('event::show', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('localization::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('localization::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('localization::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('pentabarf::login', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('person::create', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('person::delete', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('person::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('person::modify_own', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('person::show', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('rating::create', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('rating::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('rating::show', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('review::modify', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('role::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('role::delete', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('role::modify', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('submission::login', true, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('valuelist::create', false, NULL);
INSERT INTO permission (permission, conference_permission, rank) VALUES ('valuelist::modify', false, NULL);
