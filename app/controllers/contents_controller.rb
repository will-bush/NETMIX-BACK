class ContentsController < ApplicationController

    def index
        contents = Content.all
        render json: contents
    end

    def create
        content = Content.create(content_params)
        render json: content
    end

    def show
        content = Content.find(params[:id])
        render json: content
    end

    private

    def content_params
        params.require(:content).permit(:Title, :Year, :Rated, :Released, :Runtime, :Genre, :Director, :Writer, :Actors, :Plot, :Language, :Country, :Awards, :Poster, :Ratings, :Metascore, :imdbRating, :imdbVotes, :imdbID, :Type, :DVD, :BoxOffice, :Production, :Website, :Response, :totalSeasons)
    end
end
