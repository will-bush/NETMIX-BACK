class ListingsController < ApplicationController

    def index
        listings = Listing.all
        render json: listings
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing, include: [:content]
        # {id: list.id, list_name: list.list_name, user_id: list.user_id, description: list.description}
    end

    def create
        listing = Listing.create(listing_params)
        render json: listing, include: [:content]
    end

    def destroy
        listing = Listing.find(params[:id])
        listing.destroy
        render json: {resp: "listing deleted"}
    end

    private

    def listing_params
        params.require(:listing).permit(:list_id, :content_id, :review, :review_score)
    end

end
