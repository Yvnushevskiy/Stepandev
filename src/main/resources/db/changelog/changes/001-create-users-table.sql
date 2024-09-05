--liquibase formatted sql
--changeset kostyan4ik:9
CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR unique,
    password VARCHAR,
    active BOOLEAN DEFAULT TRUE
    )