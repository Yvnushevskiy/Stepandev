--liquibase formatted sql
--changeset kostyan4ik:9
CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    login VARCHAR,
    password VARCHAR
    )