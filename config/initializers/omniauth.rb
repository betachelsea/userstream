Rails.application.config.middleware.user OmniAuth::Builder do
    provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
