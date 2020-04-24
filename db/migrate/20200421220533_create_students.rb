class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.string :username
      t.string :password_digest
      t.boolean :admin, :default => false
      
      t.timestamps
    end
  end
end
