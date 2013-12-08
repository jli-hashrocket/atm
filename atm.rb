class ATM
  @@accounts= []

  attr_reader :option, :pin, :pin_verified

  def initialize(option, pin)
    @option = option
    @pin = pin
    @pin_verified = false
    @account_info = []
  end

  def self.accounts
    @@accounts
  end

  def load_account_info
    file = "accounts.yml"
    yaml_string = File.read file
    account_info = YAML::load(yaml_string)
    verify_pin(account_info)
  end


  def verify_pin(account_info)
    if account_info.values.include?(@pin)
      @pin_verified = true
    else
      puts "Invalid PIN number. Please re-enter PIN number."
      verify_pin(account_info)
    end
  end

  def create_account
    if @pin_verified == true
      puts "How much would you like to deposit?"
      deposit_amt = gets.chomp.to_f.round(2)
      transaction_type = "deposit"
      transaction = Transaction.new(@pin, @pin_verified, transaction_type, deposit_amt).make_deposit
      account = Account.new(@pin, @pin_verified, transaction)
      @@accounts << account
    end
  end
end
