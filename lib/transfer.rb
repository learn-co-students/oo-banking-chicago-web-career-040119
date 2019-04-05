
  # your code here
  class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount



  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end



def valid?
  receiver.valid? && sender.valid?
end

def execute_transaction
  if @sender.valid? && @receiver.valid? && @sender.balance > @amount && self.status == "pending"
    @sender.balance -=amount
    @receiver.balance += amount
    @status = "complete"
  else
    @status = "rejected"
   return "Transaction rejected. Please check your account balance."
  end
  end

  def reverse_transfer
    if @status == "complete"
      @receiver.balance -= amount
      @sender.balance += amount
      @status = "reversed"
    end
  end

 end
