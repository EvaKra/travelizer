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

    def edit
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.find(params[:destination_id])
        @transport = Transport.find(params[:id])
    end

    def update
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.find(params[:destination_id])
        @transport = Transport.find(params[:id]) 
        @transport.destination = @destination
        @destination.itinerary = @itinerary

        @transport.update(transport_params)
        if @transport.save
          redirect_to itinerary_path(@itinerary)
        else
          render :edit
        end
    end

    private
    
    def transport_params
        params.require(:transport).permit(:transport_type, :cost, :start_location, :via_location, :end_location, :description, photos: [])
    end

end
