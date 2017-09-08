--liquibase formatted sql
--changeset admin:2

--CHECK PRIMARY KEYS

ALTER TABLE tests
  ADD COLUMN pass_grade INT;

ALTER TABLE test_results
  ALTER COLUMN result_id TYPE SERIAL;

ALTER TABLE questions
  ALTER COLUMN question_id TYPE SERIAL;
