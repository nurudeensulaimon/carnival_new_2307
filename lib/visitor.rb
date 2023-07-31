require 'pry'


class Visitor 
attr_reader :name,
            :height,
            :spending_money,
            :preferences 
      
  def initialize(name,height,spending_money)
    @name = name 
    @height = height 
    @spending_money = spending_money.tr('$', '').to_i 
    @preferences = []
    @visitors = []
  end 

   def add_preference(preference)
       @preferences << preference 
   end
    
    def add_visitors(visitor)
      @visitors << visitor
      binding.pry
    end 
  end
  #   def tall_enough?(height)
  #      if @visitor.height >= height
  #        return true 
  #      else  
  #        return false 
  #      end   
  #   end 
  # end 