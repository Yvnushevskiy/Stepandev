--liquibase formatted sql
--changeset kostyan4ik:11
CREATE TABLE IF NOT EXISTS monster (
    name VARCHAR PRIMARY KEY,
    stats_id BIGINT,
    race VARCHAR,
    FOREIGN KEY (stats_id REFERENCES stats (id)
    )