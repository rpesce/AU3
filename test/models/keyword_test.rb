require 'test_helper'

class KeywordTest < ActiveSupport::TestCase
  
  def setup
  	@keyword = Keyword.new(name: "Testing")
  end
  
  test "keyword should be valid" do
    assert @keyword.valid?
  end

end
