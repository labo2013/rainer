class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.string :name
      t.integer :life_points

      t.timestamps
    end
  end
end
