class Product < ActiveRecord::Base

  belongs_to :category

  validates :name,
            presence: true,
            uniqueness: true,
            length: { minimum: 3 }

  validates :price,
            presence: true,
            # format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
            # format: { with: /^(\$)?(\d+)(\.|,)?\d{0,2}?$/ }
            # format: { with: /^\d{1,4}(\.\d{0,2})?$/ },
            numericality: {greater_than: 0}

  # validates_format_of :price { with: /\d{0,10}\.\d{2}/ }

end
