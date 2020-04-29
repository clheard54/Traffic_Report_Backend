class AddIdColumnsToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :student_id, :integer
    add_column :responses, :course_id, :integer
  end
end
