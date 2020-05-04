class CreateCpqs < ActiveRecord::Migration[6.0]
  def change
    create_table :cpqs do |t|
      t.string :question
      t.integer :course_id

      t.timestamps
    end
  end
end
