class NamevotesController < ApplicationController
    def index
        @namevotes = Namevote.all
        render json: @namevotes
    end
    def create
        @namevote = Namevote.new(namevote_params)
        @namevote.save
    end
    def show
        @namevote = Namevote.find(params[:id])
        render json: @namevote
    end

    

   
    
    private
    def name_params
        params.require(:name).permit(:user_id, :namestring)
    end
end
