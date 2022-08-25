require 'securerandom'

class Account < ApplicationRecord
  belongs_to :supplier
  validates_uniqueness_of :account_number

  def random_account_number
    self.account_number = SecureRandom.hex
  end
end
