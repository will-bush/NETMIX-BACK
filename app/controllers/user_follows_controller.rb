class UserFollowsController < ApplicationController

    def index
        user_follows = UserFollow.all
        render json: user_follows
    end

    def show
        user_follow = UserFollow.find(params[:id])
        render json: user_follow
    end

    def create
        user_follow = UserFollow.create(user_follow_params)
        render json: user_follow
    end

    def destroy
        user_follow = UserFollow.find(params[:id])
        user_follow.destroy
        render json: {resp: "user_follow deleted"}
    end

    private

    def user_follow_params
        params.require(:user_follow).permit(:user_id, :following_id)
    end

end
