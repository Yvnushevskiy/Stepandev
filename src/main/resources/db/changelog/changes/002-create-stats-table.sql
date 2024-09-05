--liquibase formatted sql
--changeset kostyan4ik:10
CREATE TABLE IF NOT EXISTS stats (
    id BIGSERIAL PRIMARY KEY ,
    level DOUBLE precision,
    strangth INT,
    agility INT,
    intelligence INT,
    HP INT,
    MP INT,
    criticalstrikechance DOUBLE precision,
    criticaldamagemultiply DOUBLE precision
    )