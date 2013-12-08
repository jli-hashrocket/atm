class ATM
  account_info = []

  def initialize(option, pin)
    @option = option
    @pin = pin
  end

  def load_account_info
    file = "accounts.yml"
    YAML.load(file)

  end

  def verify_pin

  end

  def create_account

  end

end
