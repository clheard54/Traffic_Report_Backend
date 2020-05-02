class Question < ApplicationRecord
    belongs_to :courses_student
    belongs_to :course
end
