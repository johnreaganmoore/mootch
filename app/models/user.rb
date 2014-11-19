class User < ActiveRecord::Base
	has_many :items
	has_many :rentals

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture,friends")
  end

end
	