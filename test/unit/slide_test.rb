require File.dirname(__FILE__) + '/../test_helper'

class SlideTest < Test::Unit::TestCase
  fixtures :slides

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Slide, slides(:first)
  end
end
