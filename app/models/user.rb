class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :email, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :confirmation_instructions

  def confirmation_instructions
    UserMailer.confirmation_instructions(self).deliver_now
  end
end
