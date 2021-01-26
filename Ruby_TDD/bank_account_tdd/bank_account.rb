class BankAccount
    @@no_of_accounts = 0
    attr_accessor :no_of_accounts, :checking, :savings, :interest, :account_num
    def initialize
        @account_num = new_account
        @@no_of_accounts += 1
        @checking = 0
        @savings = 0
        @interest = 0.08
    end

    def checking_balance
        return @checking
    end

    def saving_balance
        return @savings
    end

    def deposit(num, acct)
        if acct.end_with?("savings")
            @savings += num
            self
        elsif acct.end_with?("checking")
            @checking += num
            self
        else
            puts "Enter the correct account type"
            self
        end
    end

    def withdrawl(num, acct)
        if acct.end_with?("savings")
            if @savings > num
                @savings -= num
                self
            else @savings < num
                raise "Sorry, Insufficient Funds."
                self
            end
        end
        if acct.end_with?("checking")
            if @checking > num
                @checking -= num
                self
            else @checking < num
                raise "Sorry, Insufficient Funds."
                self
            end
        else
            puts "Enter the correct account type"
            self
        end
        self
    end

    def total_balance
        "Your total balance is #{@checking + @savings}"
    end

    def self.accounts
        return @@no_of_accounts
    end

    def acct_info
        puts "Account number: #{@account_num}"
        puts "Total account balance: #{@checking + @savings}"
        puts "Checking account balance is #{@checking}"
        puts "Savings account balance is #{@savings}"
        self
    end

    private
        def new_account
            @account_num = Random.rand(100000..700000)
        end
        def show_interest
            return @interest
        end

end

new_account = BankAccount.new
puts new_account.checking_balance