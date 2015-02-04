require('rspec')
require('numword')
require('pry')
require('bundler/setup')

describe('numword') do
  it("takes a user entered single-digit number and returns it as written words") do
    expect(5.numword()).to eq("five")
  end

  it('takes a teen-number and returns it in words')do
    expect(14.numword()).to eq("fourteen")
  end

  it('takes a two-digit number and returns it in words')do
    expect(27.numword()).to eq("twenty seven")
  end

  it('takes a three-digit number and returns it in words')do
    expect(333.numword()).to eq ("three hundred thirty three")
  end
end
