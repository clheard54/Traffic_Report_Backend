class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :datatype, :answer, :day, :student_id, :course_id, :courses_student_id
end
