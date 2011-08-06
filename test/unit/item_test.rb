require 'test_helper' 

class ItemTest < ActiveSupport::TestCase
  
  should 'be invalid without an image' do
    item = Item.new
    assert_equal false, item.valid?
  end
end
