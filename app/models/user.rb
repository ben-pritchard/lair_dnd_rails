class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :email, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
