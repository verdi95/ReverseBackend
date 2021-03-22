class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end
    def create
        @user = User.new(user_params)
        @user.save
    end
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def show_followers
        @followee_id = params[:id].to_i
        @follows = Follow.all.select{ |f| f.followee_id == @followee_id}
        @followers = @follows.map{|follow| follow.follower}
        render json: @followers
    end

    def show_followees
        @follower_id = params[:id].to_i
        @follows = Follow.all.select{ |f| f.follower_id == @follower_id}
        @followees = @follows.map{|follow| follow.followee}
        render json: @followees
    end

    def show_names
        @user = User.find(params[:id])
        @names = @user.names
        render json: @names
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
