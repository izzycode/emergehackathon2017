class AddInfoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bank_info, :string
    add_column :users, :pull_bank_info, :string
    add_column :users, :pull_bin, :string
    add_column :users, :debit_exp, :datetime
    add_column :users, :currency_code, :string
    add_column :users, :pull_name, :string
    add_column :users, :pull_address, :string
    add_column :users, :push_bank, :string
    add_column :users, :push_bin, :string
    add_column :users, :push_name, :string
    add_column :users, :push_address, :string
  end
end
