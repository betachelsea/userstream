Twimemo::Application.routes.draw do
    root :to => 'contents#index'
    get "/auth/:provider/callback" => "sessions#create"
    get "/signout" => "sessions#destroy"
end
