json.extract! bank_payment, :id, :pull_bank_account, :pull_bin, :debit_exp, :currency_code, :amount, :pull_name, :pull_address, :transaction_time, :push_bank_account, :push_bin, :push_name, :push_address, :business_app_id, :terminal_id, :transaction_id, :response_code, :created_at, :updated_at
json.url bank_payment_url(bank_payment, format: :json)
