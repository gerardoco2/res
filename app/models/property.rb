class Property < ApplicationRecord
	belongs_to :tipo_prop
	belongs_to :owner
	belongs_to :estado
	belongs_to :ciudad
	has_many :pictures, inverse_of: :property
	accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
end
