class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :RA
      t.string :theme

      t.timestamps
    end
  end
end
