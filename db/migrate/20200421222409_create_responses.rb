class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :answer
      t.string :datatype
      t.string :day
      t.integer :courses_student_id

      t.timestamps
    end
  end
end
