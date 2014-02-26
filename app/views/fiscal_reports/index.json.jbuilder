json.array!(@results) do |result|
  json.extract! result, :id, :patient, :age, :gender
  json.url result_url(result, format: :json)
end
