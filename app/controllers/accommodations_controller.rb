class AccommodationsController < ApplicationController
    def new
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @accommodation = Accommodation.new
    end

    def create
        @accommodation = Accommodation.new(accommodation_params)
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @accommodation.destination = @destination
        @destination.itinerary = @itinerary
        if @accommodation.save
            redirect_to itinerary_path(@itinerary)
        else
            render :new
        end
    end

    private 

    def accommodation_params
        params.require(:accommodation).permit(:name, :address, :cost, :accommodation_type, photos: [])
    end
end
