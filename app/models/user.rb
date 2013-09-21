class User < ActiveRecord::Base
    #include ActiveModel::ForbiddenAttributesProtection
    #attr_accessible :name, :provider, :uid

    def self.create_with_omniauth(auth)
        #permitted_params = auth.permit(:name, :provider, :uid)
        create! do |user|
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.name = auth["info"]["name"]
        end
    end
end
