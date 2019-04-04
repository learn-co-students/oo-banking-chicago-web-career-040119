class Transfer
  # your code here

    attr_accessor :amount, :sender, :receiver, :status

    def initialize(sender, receiver, amount)


      #class //////////////

      #instance ////////////
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end

    #class methods

    #instance methods
    def valid?
      if @sender.valid? == true && @receiver.valid? == true
        true
      else
        false
      end
    end

    def execute_transaction
      if @sender.valid? == false || @sender.balance - @amount < 0
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      elsif self.valid? == true && @status != "complete"
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
