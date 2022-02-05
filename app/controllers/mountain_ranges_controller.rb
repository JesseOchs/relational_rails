class MountainRangesController < ApplicationController 
    
    def index
       @mountain_range = MountainRange.all
    end 

    def show
        @range = MountainRange.find(params[:id])
    end

    def create
        @mountain_range = MountainRange.create
    end

end