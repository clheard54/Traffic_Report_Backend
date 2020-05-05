class AddDateColumnToCpqs < ActiveRecord::Migration[6.0]
  def change
    add_column :cpqs, :day, :date
  end
end
