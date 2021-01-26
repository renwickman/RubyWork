require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        @user1 = BankAccount.new
    end


        it 'has a getter checking balance' do
            expect(@user1.checking_balance).to eq(0)
        end


        it 'has a getter that retrieves the total account balance' do
            expect(@user1.total_balance).to eq("Your total balance is 0")
        end


    context 'withdrawing money' do
        it "raises an error if user tries to withdraw more money than the have in account" do
            expect{ @user1.withdrawl(100, "checking") }.to raise_error("Sorry, Insufficient Funds.")
        end
        

        it "raises an error if user tries to withdraw more money than the have in account" do
            expect{ @user1.withdrawl(100, "savings") }.to raise_error("Sorry, Insufficient Funds.")
        end


        it 'raises an error if user attempts to retrieve the total number of bank accounts' do
            expect{ @user1.accounts }.to raise_error(NoMethodError)
        end


        it 'raises an error if user attempts to set the interest rate' do
            expect{@user1.show_interest}.to raise_error(NoMethodError)
        end
    end
end