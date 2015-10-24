json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :email, :mobile_phone, :position_id, :tool_id, :team_size
  json.url lead_url(lead, format: :json)
end
