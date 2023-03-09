class HomeController < ApplicationController
    def index
        if(user_signed_in?)
            @locations = Location.where(user_id: current_user.id)
        end
        render
    end    
end
