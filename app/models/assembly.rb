class Assembly < ApplicationRecord
  has_many :assembly_parts, dependent: :destroy
  has_many :parts, through: :assembly_parts
  belongs_to :book
end
