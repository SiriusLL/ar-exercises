class Store < ActiveRecord::Base
has_many :employees
validates :name, length: {minimum: 3}
validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  
end

# validate :must_have_either_womans_or_mens_apparel
#   if !womens_apparel && !mens_apparel
#     errors.add(:)
# def must_have_either_womans_or_mens_apparel