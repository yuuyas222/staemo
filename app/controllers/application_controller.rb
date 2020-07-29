class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search

    def after_sign_in_path_for(resource)
        users_top_path
    end

    def after_sign_out_path_for(resource)
        root_path
    end
    
    def set_search
        @search = Emotion.ransack(params[:q])
        @emotions = @search.result.order(created_at: :desc)
    end
    
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    end
end
