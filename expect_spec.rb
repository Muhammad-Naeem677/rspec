class ExpectationTarget
  def initialize(actual)
    @actual = actual
  end

  def to(matcher)
    matcher.call(@actual)
  end
end

class EqMatcher
  def initialize(expected)
    @expected = expected
  end

  def call(actual)
    if actual != @expected
      raise "Expected #{@expected}, got #{actual}"
    end
  end
end

ExpectationTarget.new(1).to EqMatcher.new(1)
