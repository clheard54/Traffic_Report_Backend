# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.delete_all
Teacher.delete_all
Course.delete_all
Assignment.delete_all
CoursesStudent.delete_all

Student.create(name: 'SusieQ', grade: 10, username: "susieQ", password: "1234")
Student.create(name: 'Emma', grade: 10, username: "ejg", password: "arch")
Student.create(name: 'Jenny', grade: 10, username: "jaguar", password: "arch")
Student.create(name: 'Caroline', grade: 10, username: "carol", password: "arch")
Student.create(name: 'Ali', grade: 10, username: "aliG", password: "paint")
Student.create(name: 'Jack', grade: 10, username: "jack", password: "123")
Student.create(name: 'Clark', grade: 10, username: "clark", password: "123")
Student.create(name: 'Ethan', grade: 10, username: "ejh", password: "deng")

Assignment.create(details: "pp 43-45: #1,2, 5-10", course_id:1)
Assignment.create(details: "Read pp 122-139", course_id: 2)
Assignment.create(details: "Section 4.1 #2, 4, 7-19odd, 23", course_id: 1)

Teacher.create(name: "Britney", username: "BritV", password: "123")
Teacher.create(name: "Clarion", username: "clh", password: "asdf")
Teacher.create(name: "Peregrine", username: "pth", password: "pgrin")


Course.create(title: "Geometry", teacher_id: 1)
Course.create(title: "BC Calculus", teacher_id: 2)
Course.create(title: "Chinese", teacher_id: 3)
Course.create(title: "Advanced Trig", teacher_id: 1)
Course.create(title: "Constitutional Law", teacher_id: 2)
Course.create(title: "US History", teacher_id: 3)
Course.create(title: "Algebra II", teacher_id: 2)
Course.create(title: "Literary Fantasy", teacher_id: 2)
Course.create(title: "Shakespeare", teacher_id: 3)
Course.create(title: "Psychology", teacher_id: 3)


CoursesStudent.create(student_id: 1, course_id: 1)
CoursesStudent.create(student_id: 1, course_id: 3)
CoursesStudent.create(student_id: 1, course_id: 5)
CoursesStudent.create(student_id: 1, course_id: 8)
CoursesStudent.create(student_id: 2, course_id: 2)
CoursesStudent.create(student_id: 2, course_id: 3)
CoursesStudent.create(student_id: 2, course_id: 4)
CoursesStudent.create(student_id: 2, course_id: 5)
CoursesStudent.create(student_id: 2, course_id: 8)
CoursesStudent.create(student_id: 3, course_id: 1)
CoursesStudent.create(student_id: 3, course_id: 6)
CoursesStudent.create(student_id: 3, course_id: 8)
CoursesStudent.create(student_id: 3, course_id: 9)
CoursesStudent.create(student_id: 3, course_id: 3)
CoursesStudent.create(student_id: 4, course_id: 2)
CoursesStudent.create(student_id: 4, course_id: 6)
CoursesStudent.create(student_id: 4, course_id: 7)
CoursesStudent.create(student_id: 4, course_id: 8)
CoursesStudent.create(student_id: 4, course_id: 5)
CoursesStudent.create(student_id: 5, course_id: 3)
CoursesStudent.create(student_id: 5, course_id: 4)
CoursesStudent.create(student_id: 5, course_id: 5)
CoursesStudent.create(student_id: 5, course_id: 10)
CoursesStudent.create(student_id: 5, course_id: 7)
CoursesStudent.create(student_id: 6, course_id: 2)
CoursesStudent.create(student_id: 6, course_id: 3)
CoursesStudent.create(student_id: 6, course_id: 4)
CoursesStudent.create(student_id: 6, course_id: 5)
CoursesStudent.create(student_id: 6, course_id: 6)
CoursesStudent.create(student_id: 7, course_id: 1)
CoursesStudent.create(student_id: 7, course_id: 4)
CoursesStudent.create(student_id: 7, course_id: 7)
CoursesStudent.create(student_id: 7, course_id: 3)
CoursesStudent.create(student_id: 7, course_id: 5)
CoursesStudent.create(student_id: 8, course_id: 2)
CoursesStudent.create(student_id: 8, course_id: 5)
CoursesStudent.create(student_id: 8, course_id: 7)
CoursesStudent.create(student_id: 8, course_id: 8)
CoursesStudent.create(student_id: 8, course_id: 1)
CoursesStudent.create(student_id: 8, course_id: 3)

Response.create(answer: 'yellow', datatype:'light', day: "1587844293032", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587858791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587868791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1587878791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1587808791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1587918791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1588218791941", courses_student_id: 1, course_id: 1, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588308791941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "158830000941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587908722941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588388791081", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588298791941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588305551941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588008791941", courses_student_id: 2, course_id: 3, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1588108791941", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588208787651", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588008762341", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588178791941", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1588028791941", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588278777741", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "15879108790121", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1588308791941", courses_student_id: 3, course_id: 5, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587908791941", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'yellow', datatype:'light', day: "1587856331941", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587899271941", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587928790341", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1587958733941", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'red', datatype:'light', day: "1588018791941", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588148705281", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588308549241", courses_student_id: 4, course_id: 8, student_id: 1)
Response.create(answer: 'green', datatype:'light', day: "1588221461941", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588103995941", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588265791241", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588184341941", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1587988231941", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588008509241", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588306191941", courses_student_id: 5, course_id: 2, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1587902441941", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1587808790631", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588218791772", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588048786141", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1587938534941", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588208791222", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1587804121941", courses_student_id: 6, course_id: 3, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "1587908517941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "1587958791941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "1588006441389", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588103971941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588181231941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588200001941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "15883887917598", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "1588268791941", courses_student_id: 7, course_id: 4, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588199790761", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588305621941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588305731941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588312341941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588267491941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588182091941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588000691941", courses_student_id: 8, course_id: 5, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588295691941", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588194596682", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1588026776041", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'yellow', datatype:'light', day: "1587999733241", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1588308776141", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'red', datatype:'light', day: "1587941791941", courses_student_id: 9, course_id: 8, student_id: 2)
Response.create(answer: 'green', datatype:'light', day: "1587889795551", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588432191551", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588422947941", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588402841941", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588429501941", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "158840112941", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588401791332", courses_student_id: 10, course_id: 1, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588391791041", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588318720741", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588135791941", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1587948791766", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1587928791941", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1587848737541", courses_student_id: 11, course_id: 6, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588448780201", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588323051941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588208773941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588108503941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588408790241", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588443298941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588348208941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588288356941", courses_student_id: 12, course_id: 8, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1588210091941", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588053811941", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588001883941", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1587958482741", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'yellow', datatype:'light', day: "1587918390941", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'green', datatype:'light', day: "1588348791225", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588418651941", courses_student_id: 13, course_id: 9, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588254791941", courses_student_id: 14, course_id: 10, student_id: 3)
Response.create(answer: 'red', datatype:'light', day: "1588048357041", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'green', datatype:'light', day: "1588418332141", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'green', datatype:'light', day: "1588234791941", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'yellow', datatype:'light', day: "1587858791941", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'green', datatype:'light', day: "1588903591941", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'green', datatype:'light', day: "1588416392941", courses_student_id: 22, course_id: 5, student_id: 5)
Response.create(answer: 'green', datatype:'light', day: "1588322091941", courses_student_id: 22, course_id: 5, student_id: 5)

colors = ['red', 'yellow', 'green']


10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 1, course_id: 1, student_id: 1)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 2, course_id: 3, student_id: 1)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 3, course_id: 5, student_id: 1)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 4, course_id: 8, student_id: 1)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 5, course_id: 2, student_id: 2)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 6, course_id: 3, student_id: 2)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 7, course_id: 4, student_id: 2)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 8, course_id: 5, student_id: 2)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 9, course_id: 8, student_id: 2)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 10, course_id: 1, student_id: 3)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 11, course_id: 6, student_id: 3)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 12, course_id: 8, student_id: 3)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 13, course_id: 9, student_id: 3)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 14, course_id: 3, student_id: 3)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 15, course_id: 2, student_id: 4)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 16, course_id: 6, student_id: 4)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 17, course_id: 7, student_id: 4)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 18, course_id: 8, student_id: 4)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 19, course_id: 5, student_id: 4)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 20, course_id: 3, student_id: 5)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 21, course_id: 4, student_id: 5)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 22, course_id: 5, student_id: 5)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 24, course_id: 7, student_id: 5)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 25, course_id: 2, student_id: 6)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 26, course_id: 3, student_id: 6)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 27, course_id: 4, student_id: 6)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 28, course_id: 5, student_id: 6)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 29, course_id: 6, student_id: 6)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 30, course_id: 1, student_id: 7)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 31, course_id: 4, student_id: 7)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 32, course_id: 7, student_id: 7)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 33, course_id: 3, student_id: 7)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 34, course_id: 5, student_id: 7)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 35, course_id: 2, student_id: 8)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 36, course_id: 5, student_id: 8)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 37, course_id: 7, student_id: 8)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 38, course_id: 8, student_id: 8)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 39, course_id: 1, student_id: 8)
end

10.times do
    Response.create(answer: colors.sample, datatype:'light', day: rand(1588322091941..1589470454567).to_s, courses_student_id: 40, course_id: 3, student_id: 8)
end

