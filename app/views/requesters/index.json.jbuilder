json.array!(@requesters) do |requester|
  json.extract! requester, :id, :name, :email, :phone, :finish_at, :accept_terms, :goal_id
  json.url requester_url(requester, format: :json)
end
