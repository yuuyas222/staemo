class RoomsController < ApplicationController
    def show
        @messages = Text.all
    end
end
