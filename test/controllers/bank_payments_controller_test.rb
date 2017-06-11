require 'test_helper'

class BankPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_payment = bank_payments(:one)
  end

  test "should get index" do
    get bank_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_payment_url
    assert_response :success
  end

  test "should create bank_payment" do
    assert_difference('BankPayment.count') do
      post bank_payments_url, params: { bank_payment: { amount: @bank_payment.amount, business_app_id: @bank_payment.business_app_id, currency_code: @bank_payment.currency_code, debit_exp: @bank_payment.debit_exp, pull_address: @bank_payment.pull_address, pull_bank_account: @bank_payment.pull_bank_account, pull_bin: @bank_payment.pull_bin, pull_name: @bank_payment.pull_name, push_address: @bank_payment.push_address, push_bank_account: @bank_payment.push_bank_account, push_bin: @bank_payment.push_bin, push_name: @bank_payment.push_name, response_code: @bank_payment.response_code, terminal_id: @bank_payment.terminal_id, transaction_id: @bank_payment.transaction_id, transaction_time: @bank_payment.transaction_time } }
    end

    assert_redirected_to bank_payment_url(BankPayment.last)
  end

  test "should show bank_payment" do
    get bank_payment_url(@bank_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_payment_url(@bank_payment)
    assert_response :success
  end

  test "should update bank_payment" do
    patch bank_payment_url(@bank_payment), params: { bank_payment: { amount: @bank_payment.amount, business_app_id: @bank_payment.business_app_id, currency_code: @bank_payment.currency_code, debit_exp: @bank_payment.debit_exp, pull_address: @bank_payment.pull_address, pull_bank_account: @bank_payment.pull_bank_account, pull_bin: @bank_payment.pull_bin, pull_name: @bank_payment.pull_name, push_address: @bank_payment.push_address, push_bank_account: @bank_payment.push_bank_account, push_bin: @bank_payment.push_bin, push_name: @bank_payment.push_name, response_code: @bank_payment.response_code, terminal_id: @bank_payment.terminal_id, transaction_id: @bank_payment.transaction_id, transaction_time: @bank_payment.transaction_time } }
    assert_redirected_to bank_payment_url(@bank_payment)
  end

  test "should destroy bank_payment" do
    assert_difference('BankPayment.count', -1) do
      delete bank_payment_url(@bank_payment)
    end

    assert_redirected_to bank_payments_url
  end
end
