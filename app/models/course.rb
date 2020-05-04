class Course < ApplicationRecord
    belongs_to :teacher
    has_many :courses_students
    has_many :students, through: :courses_students
    has_many :responses
    has_many :questions
    has_many :assignments
    has_many :cpqs
    accepts_nested_attributes_for :students
    accepts_nested_attributes_for :responses
    accepts_nested_attributes_for :assignments
    accepts_nested_attributes_for :questions
    accepts_nested_attributes_for :cpqs

end
