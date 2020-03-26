class Transfer
  
  attr_reader :status
  attr_accessor :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if self.sender.valid? ==  true && self.receiver.valid? == true 
      true
    else
      false 
    end
  end
  
    def execute_transaction
      if self.sender.valid? == true 
        self.receiver.deposit(@amount)
        self.sender.balance -= @amount
      else 
        false
      end
    end
end
