class GourmetsController < ApplicationController
    def user_gourmet_index
        
    end

    def show
        @gourmet = Gourmet.find(params[:id])
        @user = User.find_by(id: @gourmet.user_id)
    end

    def new
        @gourmet = Gourmet.new
        @gourmet.gourmet_images.new
    end

    def create
        @gourmet = Gourmet.new(gourmet_params)
        @gourmet.user_id = current_user.id
        if @gourmet.save
        flash[:notice] = "投稿が完了しました"
        redirect_to user_top_path(current_user)
        else
        render "new"
        end
    end


    private
    def gourmet_params
        params.require(:gourmet).permit(:body, :tag_list, :rate, gourmet_images_images: [])
    end
end
