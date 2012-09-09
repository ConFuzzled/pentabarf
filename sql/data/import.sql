BEGIN TRANSACTION;
DELETE FROM auth.domain
\i auth.domain.sql
DELETE FROM auth.object_domain
\i auth.object_domain.sql
DELETE FROM language
\i language.sql
DELETE FROM language_localized
\i language_localized.sql
DELETE FROM auth.permission
\i auth.permission.sql
DELETE FROM auth.permission_localized
\i auth.permission_localized.sql
DELETE FROM auth.role
\i auth.role.sql
DELETE FROM auth.role_localized
\i auth.role_localized.sql
DELETE FROM auth.role_permission
\i auth.role_permission.sql
DELETE FROM auth.conference_role
\i auth.conference_role.sql
DELETE FROM auth.conference_role_localized
\i auth.conference_role_localized.sql
DELETE FROM auth.conference_role_permission
\i auth.conference_role_permission.sql
DELETE FROM conference_phase
\i conference_phase.sql
DELETE FROM conference_phase_localized
\i conference_phase_localized.sql
DELETE FROM country
\i country.sql
DELETE FROM country_localized
\i country_localized.sql
DELETE FROM currency
\i currency.sql
DELETE FROM currency_localized
\i currency_localized.sql
DELETE FROM event_role
\i event_role.sql
DELETE FROM event_role_localized
\i event_role_localized.sql
DELETE FROM event_role_state
\i event_role_state.sql
DELETE FROM event_role_state_localized
\i event_role_state_localized.sql
DELETE FROM event_state
\i event_state.sql
DELETE FROM event_state_localized
\i event_state_localized.sql
DELETE FROM event_state_progress
\i event_state_progress.sql
DELETE FROM event_state_progress_localized
\i event_state_progress_localized.sql
DELETE FROM event_type
\i event_type.sql
DELETE FROM event_type_localized
\i event_type_localized.sql
DELETE FROM link_type
\i link_type.sql
DELETE FROM link_type_localized
\i link_type_localized.sql
DELETE FROM timezone
\i timezone.sql
DELETE FROM transport
\i transport.sql
DELETE FROM transport_localized
\i transport_localized.sql
DELETE FROM ui_message
\i ui_message.sql
DELETE FROM ui_message_localized
\i ui_message_localized.sql
DELETE FROM conflict.conflict_level
\i conflict.conflict_level.sql
DELETE FROM conflict.conflict_level_localized
\i conflict.conflict_level_localized.sql
DELETE FROM conflict.conflict_type
\i conflict.conflict_type.sql
DELETE FROM conflict.conflict
\i conflict.conflict.sql
DELETE FROM conflict.conflict_localized
\i conflict.conflict_localized.sql
DELETE FROM conflict.conference_phase_conflict
\i conflict.conference_phase_conflict.sql
DELETE FROM attachment_type
\i attachment_type.sql
DELETE FROM attachment_type_localized
\i attachment_type_localized.sql
DELETE FROM event_origin
\i event_origin.sql
DELETE FROM event_origin_localized
\i event_origin_localized.sql
DELETE FROM mime_type
\i mime_type.sql
DELETE FROM mime_type_localized
\i mime_type_localized.sql
DELETE FROM phone_type
\i phone_type.sql
DELETE FROM phone_type_localized
\i phone_type_localized.sql
DELETE FROM im_type
\i im_type.sql
DELETE FROM im_type_localized
\i im_type_localized.sql
COMMIT TRANSACTION;
