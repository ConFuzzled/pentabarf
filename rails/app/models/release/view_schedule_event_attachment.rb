class Release::View_schedule_event_attachment < Momomoto::Table

  schema_name "release"

  fk_helper_single :event_attachment, Release::Event_attachment, [:conference_release_id,:event_attachment_id]

end

