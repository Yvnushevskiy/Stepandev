--liquibase formatted sql
--changeset kostyan4ik:7
CREATE TABLE IF NOT EXISTS characters (
    nickname VARCHAR unique,
    sex VARCHAR,
    class VARCHAR,
    account_id BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id)
    )