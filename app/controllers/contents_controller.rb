class ContentsController < ApplicationController
    helper_method :signed_in?

    def index
        @name = session[:user_name]
    end

    def tweet
        client = Twitter::Client.new
        client.update(params[:tweet])
        redirect_to :action => "index"
    end

    private
    def signed_in?
        true if session[:user_id]
    end
end
