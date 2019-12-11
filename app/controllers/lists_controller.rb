class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists, include: [:listings]
    end

    def show
        list = List.find(params[:id])
        render json: list, include: [:listings]
    end

    def create
        list = List.create(list_params)
        render json: list
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
        render json: {resp: "list deleted"}
    end

    private

    def list_params
        params.require(:list).permit(:list_name, :description, :user_id)
    end

end
