json.array!(@expenses) do |expense|
  json.extract! expense, :id, :line, :businessid, :typeid, :account_id, :ncf, :modified_document, :voucher_date, :payment_date, :billed_itbis, :retained_itbis, :amount_billed, :retained_isr, :status
  json.url expense_url(expense, format: :json)
end
