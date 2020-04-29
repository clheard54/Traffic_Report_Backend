class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade, :username, :admin, :courses
end
