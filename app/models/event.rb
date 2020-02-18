class Event < ApplicationRecord
  validates :title, presence: true, :length => { :in => 6..20 }
  validates :admin_id, presence: true

  belongs_to :admin, class_name: 'User'
  has_many :attendances
  has_many :users, through: :attendances

end
