--liquibase formatted sql
--changeset kostyan4ik:4
CREATE TABLE IF NOT EXISTS suffix (
    id BIGSERIAL PRIMARY KEY ,
    name VARCHAR,
    value INT,
    type VARCHAR
)