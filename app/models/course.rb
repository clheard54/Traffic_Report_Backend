class Course < ApplicationRecord
    belongs_to :teacher
    has_many :courses_students
    has_many :students, through: :courses_students
    has_many :responses, through: :courses_students
    has_many :questions, through: :courses_students
    has_many :assignments
end
