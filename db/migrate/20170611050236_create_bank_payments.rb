class CreateBankPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_payments do |t|
      t.string :pull_bank_account
      t.string :pull_bin
      t.date :debit_exp
      t.string :currency_code
      t.integer :amount
      t.string :pull_name
      t.string :pull_address
      t.datetime :transaction_time
      t.string :push_bank_account
      t.string :push_bin
      t.string :push_name
      t.string :push_address
      t.string :business_app_id
      t.string :terminal_id
      t.string :transaction_id
      t.string :response_code
      t.integer :user_id

      t.timestamps
    end

  end
end
