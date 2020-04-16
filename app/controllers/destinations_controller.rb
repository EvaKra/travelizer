class DestinationsController < ApplicationController
    def index
      
      end

      def show
        @destination = Destination.find(params[:id])
        
      end

      def new
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.new
      end

      def create
        @destination = Destination.new(destination_params)
        @itinerary = Itinerary.find(params[:itinerary_id])
       
        @destination.itinerary = @itinerary
      
          if @destination.save
            redirect_to itinerary_path(@itinerary)
          else 
            render :new
          end
      end

      private 
      def destination_params
        params.require(:destination).permit(:country, :city, :date, :description)
      end
end
