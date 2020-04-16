class TransportsController < ApplicationController
    def new
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @transport = Transport.new
    end
    
    def create
        @transport = Transport.new(transport_params)
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @transport.destination = @destination
        @destination.itinerary = @itinerary
        if @transport.save
            redirect_to itinerary_path(@itinerary)
        else
            render :new
        end
    end


    private
    
    def transport_params
        params.require(:transport).permit(:type, :cost, :start_location, :via_location, :end_location)
    end

end
