json.array!(@usertasks) do |usertask|
  json.extract! usertask, :id, :description, :due
  json.url usertask_url(usertask, format: :json)
end
