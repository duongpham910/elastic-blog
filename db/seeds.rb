author1 = Author.create(name: "Duong", email: "duong@gmail.com")
author2 = Author.create(name: "Steven Spielberg", email: "st_spielberg@gmail.com")
author3 = Author.create(name: "Christopher Nolan", email: "christ_nolan@gmail.com")

author_arr = [author1, author2, author3]

author_arr.each do |author|
  5.times do
    Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraph,
      published_on:Faker::Date.between(5.days.ago, Date.today), author_id: author.id)
  end
end
