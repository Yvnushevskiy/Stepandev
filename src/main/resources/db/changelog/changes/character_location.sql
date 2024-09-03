--liquibase formatted sql
--changeset kostyan4ik:13
CREATE TABLE IF NOT EXISTS character_location (
    location_name VARCHAR,
    character_name VARCHAR,
    FOREIGN KEY (monster_name REFERENCES monster (name)
    FOREIGN KEY (character_name REFERENCES characters (nickname)
    )