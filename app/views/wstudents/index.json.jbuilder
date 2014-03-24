json.array!(@wstudents) do |wstudent|
  json.extract! wstudent, :id
  json.url wstudent_url(wstudent, format: :json)
end
