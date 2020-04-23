class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :details
      t.string :course_id
      t.string :integer

      t.timestamps
    end
  end
end
