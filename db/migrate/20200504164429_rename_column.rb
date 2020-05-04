class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :courses_student_id, :course_id
  end
end
