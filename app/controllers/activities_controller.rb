class ActivitiesController < ApplicationController
    def new
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @activity = Activity.new
    end

    def create
        @activity = Activity.new(activity_params)
        @destination = Destination.find(params[:destination_id])
        @itinerary = Itinerary.find(params[:itinerary_id])
        @activity.destination = @destination
        @destination.itinerary = @itinerary
        if @activity.save
            redirect_to itinerary_path(@itinerary)
        else
            render :new
        end
    end

    def edit
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.find(params[:destination_id])
        @activity = Activity.find(params[:id])
    end

    def update
        @itinerary = Itinerary.find(params[:itinerary_id])
        @destination = Destination.find(params[:destination_id])
        @activity = Activity.find(params[:id]) 
        @activity.destination = @destination
        @destination.itinerary = @itinerary

        @activity.update(activity_params)
        if @activity.save
          redirect_to itinerary_path(@itinerary)
        else
          render :edit
        end
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :address, :cost, :description, photos: [])
    end

end
