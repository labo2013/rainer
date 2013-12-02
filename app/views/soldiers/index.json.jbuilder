json.array!(@soldiers) do |soldier|
  json.extract! soldier, :name, :life_points
  json.url soldier_url(soldier, format: :json)
end
