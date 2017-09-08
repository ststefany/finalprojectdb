--liquibase formatted sql
--changeset admin:2

INSERT INTO subjects (subject_name) VALUES ('maths');
INSERT INTO subjects (subject_name) VALUES ('biology');
INSERT INTO subjects (subject_name) VALUES ('physics');

INSERT INTO users (login, password, user_role) VALUES ('student', 'Student1', 'student');
INSERT INTO users (login, password, user_role) VALUES ('tutor', 'Tutor1', 'tutor');
INSERT INTO users (login, password, user_role) VALUES ('admin', 'Admin1', 'admin');

INSERT INTO tests (test_name, test_subject_id) VALUES ('maths', 1);
INSERT INTO tests (test_name, test_subject_id) VALUES ('biology', 2);
INSERT INTO tests (test_name, test_subject_id) VALUES ('physics', 3);

INSERT INTO test_results (test_id, grade) VALUES (1, 10);
INSERT INTO test_results (test_id, grade) VALUES (2, 0);

INSERT INTO user_test_results (user_id, result_id) VALUES (1, 1);
INSERT INTO user_test_results (user_id, result_id) VALUES (1, 2);

INSERT INTO questions(test_id, question_text) VALUES (1, 'first question');
INSERT INTO questions(test_id, question_text) VALUES (1, 'second question');
INSERT INTO questions(test_id, question_text) VALUES (1, 'third question');
INSERT INTO questions(test_id, question_text) VALUES (2, 'first question');
INSERT INTO questions(test_id, question_text) VALUES (2, 'second question');
INSERT INTO questions(test_id, question_text) VALUES (2, 'third question');
INSERT INTO questions(test_id, question_text) VALUES (3, 'first question');
INSERT INTO questions(test_id, question_text) VALUES (3, 'second question');
INSERT INTO questions(test_id, question_text) VALUES (3, 'third question');

INSERT INTO answers (question_id, is_right, answer_text) VALUES (1, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (1, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (2, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (2, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (3, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (3, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (4, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (4, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (5, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (5, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (6, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (6, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (7, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (7, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (8, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (8, false, 'wrong answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (9, true, 'right answer');
INSERT INTO answers (question_id, is_right, answer_text) VALUES (9, false, 'wrong answer');

INSERT INTO groups (group_name) VALUES ('first_group');
INSERT INTO groups (group_name) VALUES ('second_group');

INSERT INTO group_users (group_id, user_id) VALUES (1, 1);
INSERT INTO group_users (group_id, user_id) VALUES (1, 2);

INSERT INTO group_tests (group_id, test_id) VALUES (1, 1);
INSERT INTO group_tests (group_id, test_id) VALUES (1, 2);
INSERT INTO group_tests (group_id, test_id) VALUES (1, 3);
