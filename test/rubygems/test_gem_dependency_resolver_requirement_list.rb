require 'rubygems/test_case'
require 'rubygems/dependency_resolver'

class TestGemDependencyResolverRequirementList < Gem::TestCase

  def setup
    super

    @list = Gem::DependencyResolver::RequirementList.new
  end

  def test_each
    @list.add 1
    @list.add 2

    assert_equal [1, 2], @list.each.to_a
  end

end

