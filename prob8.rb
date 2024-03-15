class BankAccount
    attr_reader :balance
  
    def initialize(balance)
      @balance = balance
      @transactions = []  
    end
  
    def deposit(amount)
      if amount > 0
        @balance += amount
        log_transaction("Deposited $#{amount}")
      else
        puts "Deposit amount must be positive."
      end
    end
  
    def withdraw(amount)
        if 0 < amount && amount <= @balance  
          @balance -= amount
          log_transaction("Withdrew $#{amount}")
          log_transaction("Withdrew $#{amount}")
      else
        puts "Insufficient funds or withdrawal amount must be positive."
      end
    end
  
    private
  
    def log_transaction(message)
      @transactions << message  
    end
  end
  account = BankAccount.new(100)
  account.deposit(50)
  account.withdraw(25)
  
 