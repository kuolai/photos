require File.dirname(__FILE__) + '/../test_helper'

class SlideshowTest < Test::Unit::TestCase
  fixtures :slideshows

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Slideshow, slideshows(:first)
  end
end
