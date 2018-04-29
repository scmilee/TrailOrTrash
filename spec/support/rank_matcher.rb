RSpec::Matchers.define :be_of_rank do |expected| match do |actual|
  actual.rank == expected
end end