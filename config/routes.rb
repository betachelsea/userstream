Twimemo::Application.routes.draw do
    root :to => 'contents#index'
    post "/tweet" => 'contents#tweet'
    get "/auth/:provider/callback" => "sessions#create"
    get "/signout" => "sessions#destroy"
end
