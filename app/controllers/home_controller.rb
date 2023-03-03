class HomeController < ApplicationController
    def index
        if(user_signed_in?)
            @locations = Location.find_by(users_id: current_user.id)
        end
        render
    end    
end
