--liquibase formatted sql
--changeset kostyan4ik:10
CREATE TABLE IF NOT EXISTS stas (
    id BIGSERIAL PRIMARY KEY ,
    level DOUBLE,
    strangth INT,
    agility INT,
    intelligence INT,
    HP INT,
    MP INT,
    criticalstrikechance DOUBLE,
    criticaldamagemultiply DOUBLE
    )