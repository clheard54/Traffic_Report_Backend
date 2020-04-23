class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :details
      t.integer :course_id

      t.timestamps
    end
  end
end
