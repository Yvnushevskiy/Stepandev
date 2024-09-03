--liquibase formatted sql
--changeset kostyan4ik:14
CREATE TABLE IF NOT EXISTS location (
    name VARCHAR PRIMARY KEY
    )