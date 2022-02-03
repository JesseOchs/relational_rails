class MountainRangesController < ApplicationController 
    
    def index
       @mountain_range = MountainRange.all
    end 

end