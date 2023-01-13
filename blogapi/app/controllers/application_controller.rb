class ApplicationController < ActionController::Base
    def home 
        render html: "Welcome to Vidhya's Blog Page"
    end
end
