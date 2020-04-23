class CoursesStudent < ApplicationRecord
    belongs_to :course
    belongs_to :student
    has_many :responses
    has_many :questions
end
