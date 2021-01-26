require_relative 'apple'
RSpec.describe Tree do
    before(:each) do
        @tree = Tree.new
    end

    it 'has a getter and setter for age attribute' do
        @tree.age = 2
        @tree.year_passed
        expect(@tree.age).to eq(3)
        expect(@tree.count).to eq(0)
    end

    it 'has a getter for height attribute' do
        expect(@tree.height).to eq(5)
    end

    it 'raises an error if user tries to set height directly' do
        expect{ @tree.height = 5 }.to raise_error(NoMethodError)
    end

    it 'raises an error if user tries to set apple count directly' do
        expect{ @tree.count = 29 }.to raise_error(NoMethodError)
    end

    it 'has a getter for apple count' do
        expect(@tree.count).to eq (0)
    end

#------------------------------------------------------------------

context "should have a method year_passed" do
    before(:each) do
        @tree.age = 4
    end

    it 'has a method year_passed' do
        @tree.year_passed
        expect(@tree.age).to eq(5)
        expect(@tree.count).to eq(2)
        expect(@tree.height).to eq(5.5)
    end

    it 'has a method that picks apples from tree' do
        @tree.year_passed
        @tree.year_passed
        @tree.year_passed
        @tree.pick_apples
        expect(@tree.count).to eq(0)
      end
    end


#-------------------------------------------------------------------

context "should have a method year_passed" do
    before(:each) do
      @tree.age = 20
    end

    it 'can not grow apples after the age of 10' do
      @tree.year_passed
      @tree.year_passed
      @tree.year_passed
      expect(@tree.age).to eq(23)
      expect(@tree.count).to eq(0)
    end
  end
end




#----------------------------------------------