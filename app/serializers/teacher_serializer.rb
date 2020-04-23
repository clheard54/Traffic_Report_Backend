class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :courses, :admin
end
