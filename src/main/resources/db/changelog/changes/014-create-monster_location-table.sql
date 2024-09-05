--liquibase formatted sql
--changeset kostyan4ik:12
CREATE TABLE IF NOT EXISTS monster_location (
    location_name VARCHAR,
    monster_name VARCHAR,
    FOREIGN KEY (monster_name) REFERENCES monster (name),
    FOREIGN KEY (location_name) REFERENCES location (name)
    )