require 'rspec'
require_relative '../atm'

describe ATM do
  let(:atm) {ATM.new(1, 666)}
  it 'returns true if pin number is valid' do
    expect(atm.verify_pin).to eql(true)
  end
end
