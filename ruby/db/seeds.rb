3.times do |n|
  title = "title_#{n+1}"
  body = "body_#{n+1}"
  Sample.create!(title: title, body: body)
end
