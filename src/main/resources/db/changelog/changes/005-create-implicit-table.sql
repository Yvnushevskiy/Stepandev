--liquibase formatted sql
--changeset kostyan4ik:2
CREATE TABLE IF NOT EXISTS implicit (
    id BIGSERIAL PRIMARY KEY ,
    name VARCHAR,
    value INT,
    type VARCHAR
)