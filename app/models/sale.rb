class Sale < ActiveRecord::Base
	validates :item_name, presence: true, length: { minimum: 3 }
end
