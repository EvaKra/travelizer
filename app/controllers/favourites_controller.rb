class FavouritesController < ApplicationController

    def index
        @favourites = Favourite.where(user: current_user)
    end

    def create
        @itinerary = Itinerary.find(params[:itinerary_id])
        @favourite = Favourite.create(user: current_user, itinerary: @itinerary)
        redirect_back fallback_location: itineraries_path(anchor: "favourite-#{@favourite.id}")
    end
    
    def destroy
        @favourite = Favourite.find(params[:id])
        @favourite.destroy
        redirect_back fallback_location: itineraries_path(anchor: "favourite-#{@favourite.id}")
    end
end
