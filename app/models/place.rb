class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum:40, minimum: 3 } 
  validates :description, presence: true, length: { maximum:400, minimum: 3 } 
  validates :address, presence: true 
end
