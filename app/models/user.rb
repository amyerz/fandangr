class User < ActiveRecord::Base
	has_many :tickets
  attr_accessible :email, :password_digest, :username
end
