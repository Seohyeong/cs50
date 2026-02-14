CREATE INDEX "enrollements_course_id_index" ON "enrollments" ("course_id");
CREATE INDEX "enrollements_student_id_index" ON "enrollments" ("student_id");
CREATE INDEX "satisfies_course_id_index" ON "satisfies" ("course_id");
CREATE INDEX "courses_department_index" ON "courses" ("department");