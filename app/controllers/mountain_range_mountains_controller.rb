class MountainRangeMountainsController < ApplicationController

    def index
        # binding.pry
        @mountain_ranges = MountainRange.find(params[:id])
        @mountains = @mountain_ranges.mountains    
    end
end

