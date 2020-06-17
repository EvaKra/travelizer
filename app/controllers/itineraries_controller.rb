class ItinerariesController < ApplicationController

    def index
        if params[:query].present?
          @itineraries = Itinerary.where("name ILIKE ?", "%#{params[:query]}%")
        else
          @itineraries = Itinerary.all
        end
    end

    def show
        @itinerary = Itinerary.find(params[:id])
        @user = @itinerary.user
        @published_itineraries = @user.itineraries.select { |i| i.publish == true }

        @destinations = Destination.geocoded # returns destinations with coordinates
        @destinations = @itinerary.destinations
        
        @markers = @destinations.map do |destination|
          {
            lat: destination.latitude,
            lng: destination.longitude,
            infoWindow: {content: render_to_string(partial: "/itineraries/map_box", locals: { destination: destination }) }
          }
        end
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
        respond_to do |format|
          format.html { render :edit }
          format.js { render 'itineraries/edit'}
        end
    end

    def update
        @itinerary = Itinerary.find(params[:id])
        @itinerary.update(itinerary_params)
        if @itinerary.save
          respond_to do |format|  
            format.html { redirect_to itinerary_path(@itinerary)}
            format.js { render 'itineraries/update'}
          # redirect_to itinerary_path(@itinerary)
          end
        else
          render :edit
        end
    end

    def destroy
      @itinerary = Itinerary.find(params[:id])
      @itinerary.destroy
      redirect_to itineraries_path
    end

    def toggle_publish
      @itinerary.toggle(:publish).save
    end

 

    private

    def itinerary_params
        params.require(:itinerary).permit(:name, :duration, :summary, :publish, photos: [],  destination_ids: [])
    end
end
