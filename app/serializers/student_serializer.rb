class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade, :username, :password
end
