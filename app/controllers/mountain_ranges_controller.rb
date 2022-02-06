class MountainRangesController < ApplicationController 
 
    def index
       @mountain_range = MountainRange.all
    end 

    def show
        @range = MountainRange.find(params[:id])
        @mountain = @range.mountains
    end

end