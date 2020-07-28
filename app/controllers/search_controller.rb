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
            @datas = User.all.sample(3)
            # @dates = User.order(name: :desc).limit(3) # rails -> active_record(sql) -> sqlite:RANDOM or mysql:RAND -> :O
            # @dates = User.order("name desc").limit(3) # rails -> sql(=RANDOM) -> sqlite:RANDOM or mysql:RANDOM -> mysql:X
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
