class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :datatype, :answer, :day, :courses_student_id, :created_at
end
