class ListFollowsController < ApplicationController

    def index
        list_follows = ListFollow.all
        render json: list_follows
    end

    def show
        list_follow = ListFollow.find(params[:id])
        render json: list_follow
    end

    def create
        list_follow = ListFollow.create(list_follow_params)
        render json: list_follow
    end

    def destroy
        list_follow = ListFollow.find(params[:id])
        list_follow.destroy
        render json: {resp: "list_follow deleted"}
    end

    private

    def list_follow_params
        params.require(:list_follow).permit(:list_id, :user_id)
    end

end
