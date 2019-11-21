class ListingsController < ApplicationController

    def index
        listings = Listing.all
        render json: listings
    end

    def create
        listing = Listing.create(listing_params)
        render json: listing
    end

    private

    def listing_params
        params.require(:listing).permit(:list_id, :content_id, :review, :review_score)
    end

end
