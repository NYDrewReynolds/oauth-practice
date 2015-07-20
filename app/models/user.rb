class User < ActiveRecord::Base
  def self.find_or_create_from_auth(oauth)
    user = User.find_or_create_by(provider: oauth.provider, uid: oauth.provider)

    user.email = oauth.info.email
    user.nickname = oauth.info.nickname
    user.image_url = oauth.info.image_url
    user.token = oauth.credentials.token
    user.save

    user
  end
end
