class ItinerariesController < ApplicationController

    def index
        @itineraries = Itinerary.all
    end

    def show
        @itinerary = Itinerary.find(params[:id])
    end

    def new
        @itinerary = Itinerary.new
    end

    def create
        @itinerary = Itinerary.new(itinerary_params)
       if @itinerary.save
         redirect_to itinerary_path(@itinerary)
       else
         render new
       end
    end

    def edit
        @itinerary = Itinerary.find(params[:id])
    end

    def update
        @itinerary = Itinerary.find(params[:id])
        @itinerary.update(itinerary_params)
        if @itinerary.save
          redirect_to itinerary_path(@itinerary)
        else
          render edit
        end
    end

    private

    def itinerary_params
        params.require(:itinerary).permit(:name, :duration, photos: [])
    end
end
