class User < ActiveRecord::Base
	has_many :tickets
	has_secure_password
  attr_accessible :email, :password_digest, :username , :password_confirmation
  validates_uniqueness_of :email
end
