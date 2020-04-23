class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :datatype, :answer, :courses_student_id, :timestamp
  # also need :created_at ?
end
