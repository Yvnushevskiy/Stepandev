--liquibase formatted sql
--changeset kostyan4ik:6
CREATE TABLE IF NOT EXISTS character_inventory (
    character_name VARCHAR  ,
    equipment_id BIGINT,
    unique (character_name,equipment_id),
    FOREIGN KEY (equipment_id) REFERENCES equipment (id)
)