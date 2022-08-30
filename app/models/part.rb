require 'securerandom'


class Part < ApplicationRecord
  belongs_to :supplier
  validates_uniqueness_of :part_number

  def random_part_number
    if self.part_number == nil
      return self.part_number = SecureRandom.hex
    else
      return self.part_number
    end
  end
end
