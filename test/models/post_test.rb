require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @published = posts(:one_published)
    @draft     = posts(:one_draft)
  end

  test ":title must be present" do
    @published.title = ""
    refute @published.valid?
  end
end
