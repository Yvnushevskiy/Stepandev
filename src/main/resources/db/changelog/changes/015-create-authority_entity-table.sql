--liquibase formatted sql
--changeset kostyan4ik:15
CREATE TABLE IF NOT EXISTS authority_entity (
    id BIGSERIAL PRIMARY KEY,
    authority VARCHAR,
    user_id BIGSERIAL,
    FOREIGN KEY (user_id) REFERENCES users(id)
    );
