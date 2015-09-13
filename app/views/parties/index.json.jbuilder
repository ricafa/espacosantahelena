json.array!(@parties) do |party|
  json.extract! party, :id, :title, :description, :date
  json.url party_url(party, format: :json)
end
