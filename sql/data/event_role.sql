
SET client_encoding = 'UTF8';
SET search_path = public, pg_catalog;

INSERT INTO event_role (event_role, participant, rank, public) VALUES ('attendee', true, NULL, false);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('coordinator', false, 3, false);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('moderator', true, 2, true);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('reporter', true, NULL, false);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('reviewer', false, NULL, false);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('speaker', true, 1, true);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('submitter', false, NULL, false);
INSERT INTO event_role (event_role, participant, rank, public) VALUES ('visitor', true, 4, false);
