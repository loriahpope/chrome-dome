json.array!(@record_expenses) do |record_expense|
  json.extract! record_expense, :id, :date, :location, :purchaseDescription, :amount, :paymentDescription
  json.url record_expense_url(record_expense, format: :json)
end
