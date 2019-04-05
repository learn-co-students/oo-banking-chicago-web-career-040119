
require "pry"

class BankAccount

ALL = []

attr_reader :name
attr_accessor :balance, :status

def initialize(name)
  @name=name
  @balance =1000
  @status = "open"
  ALL << self
end

def self.all
  ALL
end

def self.deposit
  @deposit
end

def deposit(ammt)
  @balance += ammt
end

def self.balance
  @balance
end

def self.display_balance
  #@balance += amount
  "Your balance is $#{self.balance}."

end

def display_balance
  #@balance
"Your balance is $#{@balance}."

end

def valid?
    @balance > 0 && @status == "open"
end

def self.valid?
  @status
end

def close_account
  @status = "closed"
end

def self.close_account
  @status

end
# binding.pry
# ""
end
