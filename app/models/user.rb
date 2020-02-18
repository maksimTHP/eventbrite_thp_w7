class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :encrypted_password, presence: true


  has_many :events, as: :host
  has_many :attendances
  has_many :events, through: :attendances


  after_create :welcome_send

  def welcome_send
      UserMailer.welcome_email(self).deliver_now
  end


end
