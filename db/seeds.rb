# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(name: 'SusieQ', grade: 10, username: "susieQ", password: "1234")

Course.create(title: "Geometry", teacher_id: 1)

Teacher.create(name: "Britney", username: "BritV", password: "123")

CoursesStudent.create(student_id: 1, course_id: 1)

Response.create(answer: 'green', datatype:'light', day: Date.new, courses_student_id: 1)