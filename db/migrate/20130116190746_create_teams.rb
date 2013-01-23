class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :string
      t.string :location
      t.string :string

      t.timestamps
    end
  end
end
