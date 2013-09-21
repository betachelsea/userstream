class ContentsController < ApplicationController
    helper_method :signed_in?

    def index
        @name = session[:user_name]
    end

    private
    def signed_in?
        true if session[:user_id]
    end
end
