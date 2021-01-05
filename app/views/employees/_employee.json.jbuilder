json.extract! employee, :id, :employee_name, :address, :email_address, :phone, :date_of_birth, :created_at, :updated_at
json.url employee_url(employee, format: :json)
