class CreateHousings < ActiveRecord::Migration
  def change
    create_table :housings do |t|
      t.integer :floorNum
      t.string :name

      t.timestamps
    end
  end
end
