class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :email, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :deliver_confirmation_instructions
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def deliver_confirmation_instructions
    UserMailer.confirmation_instructions(self).deliver_now
  end
end
