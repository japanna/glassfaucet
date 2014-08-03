class Product < ActiveRecord::Base
	validates :item, presence: true
end
