class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.integer :level
      t.references :user, index: true

      t.timestamps
    end
  end
end
