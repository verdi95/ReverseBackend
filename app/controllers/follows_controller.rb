class FollowsController < ApplicationController
    def index
        @follows = Follow.all
        render json: @follows
    end
    def create
        @follow = Follow.new(follow_params)
        @follow.save
    end
    def show
        @follow = Follow.find(params[:id])
        render json: @follow
    end
    def show_follower
        @follow = Follow.find(params[:id])
        @follower = @follow.follower
        render json: @follower
    end

    def show_followee
        @follow = Follow.find(params[:id])
        @followee = @follow.followee
        render json: @followee
    end
    
    private
    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
