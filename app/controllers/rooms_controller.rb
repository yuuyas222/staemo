class RoomsController < ApplicationController
    def show
        @room = Room.find(params[:id])
        @messages = @room.texts.all
    end

    def new
        @rooms = Room.all
        @room = Room.new
    end

    def create
        @room = Room.new(params_room)
        @room.user_id = current_user.id
        if @room.save
            flash[:notice] = "チャットルームが作成されました"
            redirect_to user_top_path(current_user)
        else
            flash[:notice] = "チャットルームの作成に失敗しました"
            redirect_to user_top_path(current_user)
        end
        
    end

    private

    def params_room
        params.require(:room).permit(:room_name, :user_id)
    end

   

    
end
