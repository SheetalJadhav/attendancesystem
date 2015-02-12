json.array!(@employees) do |employee|
  json.extract! employee, :id, :firstname, :lastname, :middlename, :address, :contact, :dob, :email, :active, :boolean
  json.url employee_url(employee, format: :json)
end
