class Category < ActiveRecord::Base

  has_many :products

  validates :name,
            presence: true,
            uniqueness: true,
            length: { minimum: 3 }
end
