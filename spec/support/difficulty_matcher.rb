RSpec::Matchers.define :be_of_difficulty do |expected| match do |actual|
  actual.difficulty == expected
end end