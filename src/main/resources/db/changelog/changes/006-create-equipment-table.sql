--liquibase formatted sql
--changeset kostyan4ik:1
CREATE TABLE IF NOT EXISTS equipment (
    id BIGSERIAL PRIMARY KEY ,
    name VARCHAR,
    slot_name VARCHAR,
    prefix_id BIGINT,
    suffix_id BIGINT,
    implicit_id BIGINT,
    character_name VARCHAR,
    FOREIGN KEY (prefix_id) REFERENCES suffix (id),
    FOREIGN KEY (suffix_id) REFERENCES suffix (id),
    FOREIGN KEY (implicit_id) REFERENCES suffix (id)
)