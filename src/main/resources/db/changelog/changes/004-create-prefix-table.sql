--liquibase formatted sql
--changeset kostyan4ik:3
CREATE TABLE IF NOT EXISTS prefix (
    id BIGSERIAL PRIMARY KEY ,
    name VARCHAR,
    value INT,
    type VARCHAR
)