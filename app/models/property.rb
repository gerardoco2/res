class Property < ApplicationRecord
	belongs_to :tipo_prop
	belongs_to :owner
	belongs_to :estado
	belongs_to :ciudad
end
