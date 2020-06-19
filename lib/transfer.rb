class Transfer
  # your code here
  attr_accessor :status, :amount
  attr_reader :sender, :receiver, :balance
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @amount = amount
  end
  def valid?
@sender.valid? && @receiver.valid?
end

def execute_transaction
if !valid? || @status == "complete" || @sender.balance < @amount
  @status = "rejected"
  "Transaction rejected. Please check your account balance."
  else
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end
end
def reverse_transfer
  if @status == "complete"
    @sender.balance += @amount
    @receiver.balance -= @amount
    @status = "reversed"
  end
end
end
