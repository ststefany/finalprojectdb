--liquibase formatted sql
--changeset admin:2

--CHECK PRIMARY KEYS

ALTER TABLE tests
  ADD COLUMN pass_grade INT;
