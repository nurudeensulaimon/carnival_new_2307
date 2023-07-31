require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do 
  before :each do 
    @ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    @ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    @ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
    @visitor1 = Visitor.new('Bruce', 54, '$10')
    @visitor2 = Visitor.new('Tucker', 36, '$5')
    @visitor3 = Visitor.new('Penny', 64, '$15')
    end 

    describe "#initialize" do 
      it "can create a new ride1 instance" do 

        expect(@ride1).to be_a Ride
        expect(@ride1).to be_an_instance_of Ride

      end 
    end

    describe "attributes" do 
      it "has attributes and they can be read" do 
        
        expect(@ride1.name).to eq("Carousel")
        expect(@ride1.min_height).to eq(24)
        expect(@ride1.admission_fee).to eq(1)
        expect(@ride1.admission_fee).to eq(1)
        expect(@ride1.excitement).to eq(:gentle)
        expect(@ride1.total_revenue).to eq(0)
        end
      end

      describe "#rider_log"  do
        xit " boards visitors into ride" do 
          visitor1.add_preference(:gentle)
          visitor2.add_preference(:gentle)

           ride1.board_rider(visitor1) 
           ride1.board_rider(visitor2)
           ride1.board_rider(visitor1)

           expect(ride1.rider_log).to eq({visitor1, visitor2})
        end 
      end 

      describe "#spending_money" do 
        xit "declares how much the visitor spends" do

          expect(visitor1.spending_money).to eq(8)
          expect(visitor2.spending_money).to eq(4)

    end 

    describe "#total_revenue" do
      xit "calculates the total revenue for the visitors" do

        expect(ride1.total_revenue).to eq(3)
      end 
    end 

