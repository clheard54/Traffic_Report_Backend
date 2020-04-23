class Student < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  validates :password, presence: true
  
  has_many :courses_students
  has_many :courses, through: :courses_students
  has_many :responses, through: :courses_students
  has_many :questions, through: :courses_students
end
