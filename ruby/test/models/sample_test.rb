require 'test_helper'

class SampleTest < ActiveSupport::TestCase

  def setup
    @sample = Sample.new(title: "title01", body: "body01")
  end

  test "正常: サンプルが有効である" do
    assert @sample.valid?
  end

  test "異常: タイトルが空の場合" do
    @sample.title = "     "
    assert_not @sample.valid?
  end

  test "異常: タイトルが上限を超えた場合" do
    @sample.title = "a" * 11
    assert_not @sample.valid?
  end

  test "異常: 本文が空の場合" do
    @sample.body = "     "
    assert_not @sample.valid?
  end

end
