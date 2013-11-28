class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.integer :atk_points
      t.integer :def_points
      t.integer :health

      t.timestamps
    end
  end
end
