
CREATE TABLE base.person_image (
  person_id INTEGER NOT NULL,
  mime_type TEXT NOT NULL,
  public BOOL NOT NULL DEFAULT FALSE,
  image BYTEA NOT NULL
);

CREATE TABLE person_image (
  FOREIGN KEY (person_id) REFERENCES person (person_id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (mime_type) REFERENCES mime_type (mime_type) ON UPDATE CASCADE ON DELETE RESTRICT,
  PRIMARY KEY (person_id)
) INHERITS( base.person_image );

CREATE TABLE log.person_image (
) INHERITS( base.logging, base.person_image );

CREATE INDEX log_person_image_person_id_idx ON log.person_image( person_id );
CREATE INDEX log_person_image_log_transaction_id_idx ON log.person_image( log_transaction_id );

