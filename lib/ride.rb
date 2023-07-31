require './lib/visitor'
class Ride 
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement 

  def initialize(name,min_height,admission_fee,excitement)
    @name = name  
    @min_height = min_height 
    @admission_fee = admission_fee
    @excitement = [:]
    @ride_log = {}
  end 
end
#    def total_revenue 
#        0
#    end 
# end 

