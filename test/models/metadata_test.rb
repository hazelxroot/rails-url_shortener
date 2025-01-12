require "test_helper"

class MetadataTest < ActiveSupport::TestCase
  test "title attribute" do
    assert_equal "Hello", Metadata.new("<title>Hello</title>").title
  end

  test "missing title atttribute" do
    assert_nil Metadata.new.title
  end

  test "meta description" do
    assert_equal "World", Metadata.new("<meta name='description' content='World'>").description
  end

  test "missing meta description" do
    assert_nil Metadata.new.description
  end

  test "image" do
    assert_equal "https://example.com/image.jpg", Metadata.new("<meta property='og:image' content='https://example.com/image.jpg'>").image
  end

  test "missing og:image" do
    assert_nil Metadata.new.image
  end
end
