json.array!(@addresses) do |address|
  json.name        address.name
  json.number       address.number
end
