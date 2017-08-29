require 'test_helper'

class SamplesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @sample = samples(:one)
  end

  test "should get index" do
    get samples_path
    assert_template 'samples/index'
  end

  test "should get show" do
    get sample_path(@sample)
    assert_template 'samples/show'
  end

end
