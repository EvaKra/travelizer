class ItinerariesController < ApplicationController

    def index
        @itineraries = Itinerary.all
    end

    def show
        @itinerary = Itinerary.find(params[:id])
        @destinations = @itinerary.destinations
    end

    def new
        @itinerary = Itinerary.new
    end

    def create
      @user = current_user
      @itinerary = Itinerary.new(itinerary_params)
      @itinerary.user = @user
       if @itinerary.save
         redirect_to itinerary_path(@itinerary)
       else
         render :new
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
          render :edit
        end
    end

      def destroy
        @itinerary = Itinerary.find(params[:id])
        @itinerary.destroy
        redirect_to itineraries_path
      end

    private

    def itinerary_params
        params.require(:itinerary).permit(:name, :duration, photos: [],  destination_ids: [])
    end
end
