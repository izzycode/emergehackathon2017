json.extract! payment, :id, :amount, :currency, :payment_time, :transaction_id, :response_code, :business_app, :terminal_id, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
