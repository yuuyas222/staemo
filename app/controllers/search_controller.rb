class SearchController < ApplicationController

    def search
        @content = params["search"]["content"]
        @datas = search_for(@content)
    end

    def user_search

        if params["search"]
            @content = params["search"]["content"]
            @datas = user_search_for(@content)
        else
            @datas = User.order("RANDOM()").limit(3)
        end
    end

    private

    def partical(content)
        Emotion.where("body LIKE ?", "%#{content}%")
    end

    def user_partical(content)
        User.where("introduction LIKE ?", "%#{content}%") 
    end

    def search_for(content)    
        partical(content)
    end

    def user_search_for(content)    
        user_partical(content)
    end
    
end
