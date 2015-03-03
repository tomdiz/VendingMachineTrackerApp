json.array!(@vending_machine_statuses) do |vending_machine_status|
  json.extract! vending_machine_status, :id, :serialNumber, :type, :row, :total
  json.url vending_machine_status_url(vending_machine_status, format: :json)
end
