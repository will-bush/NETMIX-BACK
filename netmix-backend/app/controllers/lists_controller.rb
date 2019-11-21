class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists, include: [:listings]
    end

    def show
        list = List.find(params[:id])
        render json: list, include: [:listings]
        # {id: list.id, list_name: list.list_name, user_id: list.user_id, description: list.description}

    end


end
