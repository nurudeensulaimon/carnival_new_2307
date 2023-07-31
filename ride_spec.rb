require './lib/visitor'
require './lib/ride'

RSpec.describe Visitor do 
  before :each do 
    @ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

    end 

    describe "#initialize" do 
      it "can create a new ride1 instance" do 

        expect(@ride1).to be_a Ride
        expect(@dride1).to be_an_instance_of Ride

      end 
    end

    describe "attributes" do 
      it "has attributes and they can be read" do 
        
        expect(@ride1.name).to eq("Carousel")
        expect(@ride1.min_height).to eq(24)
        expect(ride1.admission_fee).to eq(1)
        expect(ride1.admission_fee).to eq(1)



      end
    end 