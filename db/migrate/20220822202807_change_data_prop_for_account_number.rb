class ChangeDataPropForAccountNumber < ActiveRecord::Migration[7.0]
  def change
    change_column :accounts, :account_number, :string, unique: true
  end
end
