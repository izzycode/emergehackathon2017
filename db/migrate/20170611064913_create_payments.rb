class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :currency
      t.datetime :payment_time
      t.string :transaction_id
      t.string :response_code
      t.string :business_app
      t.string :terminal_id
      t.integer :user_id

      t.timestamps
    end
  end
end
