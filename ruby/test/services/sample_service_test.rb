require 'test_helper'

class SampleServiceTest < ActiveSupport::TestCase

  def setup
  end

  test "正常" do
    assert_equal SampleService.aaa, "aaa"
  end

end
