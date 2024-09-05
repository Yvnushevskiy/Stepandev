--liquibase formatted sql
--changeset kostyan4ik:5
CREATE TABLE IF NOT EXISTS character_slots (
    character_name VARCHAR,
    slot_name VARCHAR,
    equipment_id   BIGINT,
    unique (character_name, slot_name),
    FOREIGN KEY (equipment_id) REFERENCES equipment (id)
)