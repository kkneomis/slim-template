json.array!(@testjsons) do |testjson|
  json.extract! testjson, :id, :title, :start, :end, :requestor
  json.url testjson_url(testjson, format: :json)
end
