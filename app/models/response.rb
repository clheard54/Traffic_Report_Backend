class Response < ApplicationRecord
    belongs_to :courses_student
    validates :answer, presence: true
end
