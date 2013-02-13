class AddPreferenceToHousing < ActiveRecord::Migration
  def change
    add_column :housings, :rodin_pref, :boolean
    add_column :housings, :harnwell_pref, :boolean
    add_column :housings, :harrison_pref, :boolean
  end
end
