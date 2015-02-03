require('numword')
require('pry')

describe('Fixnum#numword') do
  it("takes a user entered single-digit number and returns it as written words") do |variable|
    expect(5.numword()).to eq("five")
  end
end
