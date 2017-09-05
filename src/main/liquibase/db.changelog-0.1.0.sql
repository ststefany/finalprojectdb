--liquibase formatted sql
--changeset admin:1

CREATE TYPE ROLE AS ENUM ('admin', 'student', 'tutor');

CREATE TABLE subjects (
  subject_id   SERIAL PRIMARY KEY,
  subject_name VARCHAR(30) UNIQUE
);

CREATE TABLE users
(
  user_id   SERIAL PRIMARY KEY,
  login     VARCHAR(30) NOT NULL,
  password  VARCHAR(30) NOT NULL,
  user_role ROLE        NOT NULL DEFAULT 'student'
);

CREATE TABLE tests (
  test_id         SERIAL PRIMARY KEY,
  test_name       VARCHAR(30) NOT NULL,
  test_subject_id INT REFERENCES subjects (subject_id)
);

CREATE TABLE test_results
(
  result_id INT PRIMARY KEY,
  test_id   INT REFERENCES tests (test_id),
  grade     INT NOT NULL
);

CREATE TABLE user_test_results
(
  user_id   INT REFERENCES users (user_id),
  result_id INT REFERENCES test_results (result_id),
  PRIMARY KEY (user_id, result_id)
);


CREATE TABLE questions (
  question_id   INT PRIMARY KEY,
  test_id       INT REFERENCES tests (test_id),
  question_text TEXT NOT NULL
);

CREATE TABLE answers
(
  answer_id   SERIAL PRIMARY KEY,
  question_id INT REFERENCES questions (question_id),
  is_right    BOOLEAN DEFAULT FALSE  NOT NULL,
  answer_text TEXT                   NOT NULL
);

CREATE TABLE groups
(
  group_id   SERIAL PRIMARY KEY,
  group_name VARCHAR(30) NOT NULL
);

CREATE TABLE group_users (
  group_id INT REFERENCES groups (group_id),
  user_id  INT REFERENCES users (user_id),
  PRIMARY KEY (group_id, user_id)
);

CREATE TABLE group_tests (
  group_id INT REFERENCES groups (group_id),
  test_id  INT REFERENCES tests (test_id),
  PRIMARY KEY (group_id, test_id)
)


