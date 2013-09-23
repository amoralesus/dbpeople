json.array!(@people) do |person|
  json.extract! person, :first_name, :last_name, :title, :linked_in, :email, :phone
  json.url person_url(person, format: :json)
end
