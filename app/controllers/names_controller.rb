class NamesController < ApplicationController
    def index
        @names = Name.all
        render json: @names
    end
    def create
        @name = Name.new(name_params)
        @name.save
    end
    def show
        @name = Name.find(params[:id])
        render json: @name
    end
    
    def show_namevotes
        @name = Name.find(params[:id])
        @namevotes = @name.namevotes
        render json: @namevotes
    end
   
    
    private
    def name_params
        params.require(:name).permit(:user_id, :namestring)
    end
end
