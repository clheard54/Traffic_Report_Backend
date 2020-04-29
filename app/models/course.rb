class Course < ApplicationRecord
    belongs_to :teacher
    has_many :courses_students
    has_many :students, through: :courses_students
    has_many :responses
    has_many :questions, through: :courses_students
    has_many :assignments
    accepts_nested_attributes_for :students
    accepts_nested_attributes_for :responses
end
