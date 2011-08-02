-- Table: discovered_services

-- DROP TABLE discovered_services;

CREATE TABLE discovered_services
(
  address inet NOT NULL,
  port integer NOT NULL,
  service text,
  ident text,
  date_created timestamp with time zone,
  last_updated timestamp with time zone,
  CONSTRAINT id PRIMARY KEY (address, port)
)
WITH (
  OIDS=FALSE
);
COMMENT ON TABLE discovered_services IS 'Discovered services';