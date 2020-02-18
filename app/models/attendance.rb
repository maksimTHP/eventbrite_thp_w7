class Attendance < ApplicationRecord
  validates :stripe_customer_id, presence: true
  validates :guest_id, presence: true
  validates :event_id, presnce: true




  after_create :welcome_send


  
  belongs_to :guest, class_name: 'User'
  belongs_to :event
end
