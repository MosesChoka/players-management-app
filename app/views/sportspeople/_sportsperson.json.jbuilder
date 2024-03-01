json.extract! sportsperson, :id, :firstname, :lastname, :birthdate, :phone, :email, :team, :position, :created_at, :updated_at
json.url sportsperson_url(sportsperson, format: :json)
