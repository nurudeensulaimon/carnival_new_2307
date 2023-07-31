require './lib/visitor'

RSpec.describe Visitor do 
  before :each do 
    visitor1 = Visitor.new('Bruce', 54, '$10')  
    end 

    describe "#initialize" do 
      it "can create a new visitor1 instance" do 
        expect(@visitor1).to be_a Visitor
        expect(@visitor1).to be_an_instance_of Visitor
      end 


    describe "attributes" do 
      it "has attributes and they can be read" do 
        expect(@visitor1.name).to eq("Bruce")
        expect(@visitor1.height).to eq(54)
        expect(@visitor1.spending_money).to eq(10)
      end
    end 

      