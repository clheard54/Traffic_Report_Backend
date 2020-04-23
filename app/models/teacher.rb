class Teacher < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }, presence: true
    validates :password, presence: true

    has_many :courses
    has_many :courses_students, through: :courses
    has_many :students, through: courses_students
    # accepts_nested_attributes_for :courses
    # accepts_nested_attributes_for :courses_students
    # accepts_nested_attributes_for :students
    
end
