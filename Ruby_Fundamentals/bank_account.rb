class BankAccount
    attr_accessor :account, :account_checking, :account_savings
    @@number_of_account = 0
    private
    @@interest_rate = 0.01
    def generate_account
        rand(10 ** 10)
    end

    public
    def initialize(checking_deposit, savings_deposit)
        @account = generate_account
        @account_checking = checking_deposit
        @account_savings = savings_deposit
        @interest_rate = 0.01
        p @@number_of_account += 1
    end

    def account_info
        p "User account: #{@account}"
        p "The total money is #{total}"
        p "Checking: #{@account_checking}"
        p "Savings: #{@account_savings}"
        p "Interest Rate: #{@@interest_rate}"
    end

    def checking
        @account_checking
    end

    def savings
        @account_savings
    end

    def total
        "Your total balance is #{@account_checking + @account_savings}"
    end

    def deposit(account, amount)
        if account == "checking"
            @account_checking += amount
        elsif account == "savings"
            @account_savings += amount
        else
            p "The account does not exist"
        end
    end

    def withdrawal(account, amount)
        if account == "checking"
            if amount > @account_checking 
                p "Your checking has insufficient funds"
            else
                @account_checking = amount
            end
        elsif account == "savings"
            if amount > @account_savings 
                p "Your savings has insufficient funds"
            else
                @account_savings = amount
            end
        else
            p "The account does not exist"
        end
    end    
end

a= BankAccount.new(500, 25)
a.deposit("checking", 300)
puts a.checking
puts a.savings
puts a.total
b = BankAccount.new(300, 50)
puts b.checking
puts b.savings
puts b.total
b.account_info
# puts a.account