class Housing < ActiveRecord::Base
  attr_accessible :floorNum, :name, :rodin_pref, :harrison_pref, :harnwell_pref

  validates :name,:floorNum, :presence => true

  scope :rodinites, where(:rodin_pref => true)
end
