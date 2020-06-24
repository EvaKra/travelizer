class FavouritesController < ApplicationController

    def create
        @itinerary = Itinerary.find(params[:itinerary_id])
        @favourite = Favourite.create(user: current_user, itinerary: @itinerary)
        redirect_back fallback_location: itineraries_path(anchor: "favourite-#{@favourite.id}")
    end
    
    def destroy
        @favourite = Favourite.find(params[:id])
     
        @favourite.destroy
        redirect_to itineraries_path(anchor: "favourite-#{@favourite.id}")
    end
end
