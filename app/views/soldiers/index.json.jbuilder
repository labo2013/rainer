json.array!(@soldiers) do |soldier|
  json.extract! soldier, :atk_points, :def_points, :health
  json.url soldier_url(soldier, format: :json)
end
