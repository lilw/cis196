require 'test_helper'

class HousingTest < ActiveSupport::Unit::TestCase
   def test_simple
       validates.should == true
       
   end
   def test_other
       assert true
   end
end
