class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :teacher_id, :students
end
