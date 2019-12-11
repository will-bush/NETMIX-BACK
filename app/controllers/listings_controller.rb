class ListingsController < ApplicationController

    def index
        listings = Listing.all
        render json: listings
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing, include: [:content]
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

    def update
        listing = Listing.find(params[:id])
        listing.update(review: params[:review])
        render json: listing
    end

    private

    def listing_params
        params.require(:listing).permit(:list_id, :content_id, :review, :review_score)
    end

end
