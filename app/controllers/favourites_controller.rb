class FavouritesController < ApplicationController

    def create
        @itinerary = Product.find(params[:itinerary_id])
        @favorite = Favorite.create(user: current_user, itinerary: @itinerary)
        redirect_back fallback_location: itineraries_path(anchor: "favorite-#{@favorite.id}")
    end
    
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_back fallback_location: itineraries_path(anchor: "favorite-#{@favorite.id}")
    end
end
