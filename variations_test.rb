require 'test/unit'
require_relative 'variations'

# Red (write next test, see it fail)
# Green (write simplist implementation to get test to pass)
# * Refactor (improve tests or implementation without changing behavior of code)

# == CODE SMELLS ==

# == BACKLOG ==
# - Don't give great feedback for no valid name
# - we only support north american names
# - we don't give feedback on what user entered
# - we capitalize
# - we don't support hyphens
# - we don't support numbers, and probably shouldn't
# - consider adding validations

class VariationsTest < Test::Unit::TestCase
  def test_variations_of_dylan
    variations = Variations.new

    name_variations = variations.generate_name_variations("Dylan")

    assert_equal "Dylan, Lynda", name_variations
  end

  def test_works_with_no_name
    variations = Variations.new

    name_variations = variations.generate_name_variations("")

    assert_equal "", name_variations
  end

  def test_bob
    variations = Variations.new

    name_variations = variations.generate_name_variations("Bob")

    assert_equal "Bob", name_variations
  end
end
