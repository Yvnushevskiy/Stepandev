--liquibase formatted sql
--changeset kostyan4ik:8
CREATE TABLE IF NOT EXISTS account (
    id BIGSERIAL PRIMARY KEY ,
    money INT,
    potion INT,
    scrol INT,
    user_id BIGINT,
    FOREIGN KEY (user_id REFERENCES users (id)
    )