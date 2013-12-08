require 'pry'
require 'csv'
require 'yaml'

require_relative "atm"


options = {"1" => "Create a new account",
           "2" => "Open existing account"
          }
puts "Welcome to Bank of Monetary Desperation's ATM"
options.each do |key, val|
  puts "#{key}) #{val}"
end

puts "Please select an option"
option = gets.chomp.to_i

puts "What is your PIN number?"
pin = gets.chomp.to_i

atm = ATM.new(option, pin)
atm.verify_pin
