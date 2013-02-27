require 'spec_helper'

describe Housing do
it "should be true" do
     subject.name = "Lily"
     subject.floorNum = 3
     subject.should be_valid
  end
end
