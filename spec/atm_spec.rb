require 'rspec'
require 'yaml'
require_relative '../atm'

describe ATM do
  let(:atm) {ATM.new(1, 666)}
  it 'returns true if pin number is valid' do
    account_info = {"pin" => 666}
    expect(atm.verify_pin(account_info)).to eql(true)
  end
end
