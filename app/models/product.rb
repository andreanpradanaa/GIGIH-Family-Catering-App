class Product < ApplicationRecord
	belongs_to :category
	has_many :order_items, dependent: :delete_all
end
