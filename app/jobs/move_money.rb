class MoveMoneyJob < ApplicationJob
  require './config/visa_api.rb'
  self.queue_adapter = :resque
  queue_as :money

  def perform()
    mVisaTransactionRequestpush ='''{
    "acquirerCountryCode": "840",
    "acquiringBin": "408999",
    "amount": "124.05",
    "businessApplicationId": "AA",
    "cardAcceptor": {
      "address": {
        "country": "USA",
        "county": "San Mateo",
        "state": "CA",
        "zipCode": "94404"
      },
      "idCode": "CA-IDCode-77765",
      "name": "Visa Inc. USA-Foster City",
      "terminalId": "TID-9999"
    },
    "localTransactionDateTime": "2017-06-11T01:35:06",
    "merchantCategoryCode": "6012",
    "pointOfServiceData": {
      "motoECIIndicator": "0",
      "panEntryMode": "90",
      "posConditionCode": "00"
    },
    "recipientName": "rohan",
    "recipientPrimaryAccountNumber": "4957030420210462",
    "retrievalReferenceNumber": "412770451018",
    "senderAccountNumber": "4957030420210454",
    "senderAddress": "901 Metro Center Blvd",
    "senderCity": "Foster City",
    "senderCountryCode": "124",
    "senderName": "Mohammed Qasim",
    "senderReference": "",
    "senderStateCode": "CA",
    "sourceOfFundsCode": "05",
    "systemsTraceAuditNumber": "451018",
    "transactionCurrencyCode": "USD",
    "transactionIdentifier": "381228649430015"
    }'''


    mVisaTransactionRequestpull ='''{
    "acquirerCountryCode": "840",
    "acquiringBin": "408999",
    "amount": "124.02",
    "businessApplicationId": "AA",
    "cardAcceptor": {
      "address": {
        "country": "USA",
        "county": "San Mateo",
        "state": "CA",
        "zipCode": "94404"
      },
      "idCode": "ABCD1234ABCD123",
      "name": "Visa Inc. USA-Foster City",
      "terminalId": "ABCD1234"
    },
    "cavv": "0700100038238906000013405823891061668252",
    "localTransactionDateTime": "2017-06-11T01:18:55",
    "retrievalReferenceNumber": "412770451018",
    "senderCardExpiryDate": "2020-10",
    "senderCurrencyCode": "USD",
    "senderPrimaryAccountNumber": "4895142232120006",
    "systemsTraceAuditNumber": "451001"
    }'''




    @visa_api_client = VisaAPIClient.new

    response_code_pull = @visa_api_client.pull("post", mVisaTransactionRequestpull)
    response_code_push = @visa_api_client.push("post", mVisaTransactionRequestpush)
    #
    #
    # p response_code_push
    #
    # print JSON.pretty_generate(JSON.parse(response_code_pull))
    # print JSON.pretty_generate(JSON.parse(response_code_push))








  end



end
