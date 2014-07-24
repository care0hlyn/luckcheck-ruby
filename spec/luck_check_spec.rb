require ('rspec')
require ('luck_check')

describe ("luck_check") do
  it("should return true if the number is a lucky ticket") do
    luck_check("17935").should(eq("true"))
  end

  it("should return false if the number is not a lucky ticket") do
    luck_check("14678").should(eq("false"))
  end
end
