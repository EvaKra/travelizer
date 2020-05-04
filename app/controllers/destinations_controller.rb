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

      def edit
        @destination = Destination.find(params[:id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination.itinerary = @itinerary
      end

      def update
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.find(params[:id])
        @destination.update(destination_params)
        if @destination.save
          redirect_to itinerary_path(@itinerary)
        else
          render :edit
        end
      end

      private 
      def destination_params
        params.require(:destination).permit(:country, :city, :date, :description, photos: [])
      end
end
