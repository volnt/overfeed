require 'test_helper'

class FeedTest < ActiveSupport::TestCase
  def setup
    @feed = feeds(:one)
  end
  
  test "should be valid" do
    assert @feed.valid?
  end

  test "name should be present" do
    @feed.name = nil
    assert_not  @feed.valid?
  end

  test "url should be present" do
    @feed.url = nil
    assert_not  @feed.valid?
  end

  test "user_id should be present" do
    @feed.user_id = nil
    assert_not  @feed.valid?
  end
  
end
