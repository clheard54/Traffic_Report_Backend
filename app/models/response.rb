class Response < ApplicationRecord
    belongs_to :courses_student
    belongs_to :course
    belongs_to :student
    validates :answer, presence: true
end
