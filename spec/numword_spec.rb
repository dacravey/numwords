require('rspec')
require('numword')
require('pry')
require('bundler/setup')

describe('numword') do
  it("takes a user entered single-digit number and returns it as written words") do
    expect(5.numword()).to eq("five")
  end
end
