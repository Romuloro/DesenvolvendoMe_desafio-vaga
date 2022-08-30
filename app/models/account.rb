require 'securerandom'

class Account < ApplicationRecord
  belongs_to :supplier
  validates_uniqueness_of :account_number

  def random_account_number
    if self.account_number == nil
      return self.account_number = SecureRandom.hex
    else
      return self.account_number
    end
  end
end
