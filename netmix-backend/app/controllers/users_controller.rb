class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [:lists]
    end

    def show
        user = User.find(params[:id])
        render json: user, include: [:lists]
        # {id: user.id, name: user.name, username: user.username, bio: user.bio}
    end

    def signin
        user = User.find_by(username: params[:username])
        if user and user.authenticate(params[:password])
            render json: { username: user.username, id: user.id, token: issue_token({ id: user.id }) }
        else
            render json: { error:  'Username/password combination is invalid.' }, status: 401
        end
    end

    def validate
        user = get_current_user
        if user
            render json: {username: user.username, token: issue_token({id: user.id})}
        else
            render json: { error:  'Unable to validate user.' }, status: 401
         end
    end

    def lists
        user = get_current_user
        if user
            render json: user.lists
        else    
            render json: { error:  'Unable to find any lists.' }, status: 401
        end
    end

end
