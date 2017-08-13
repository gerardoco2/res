class Property < ApplicationRecord
	belongs_to :tipo_prop
	belongs_to :owner
	belongs_to :estado
	belongs_to :ciudad
	has_many :pictures, dependent: :destroy
	accepts_nested_attributes_for :pictures, allow_destroy: true
end
