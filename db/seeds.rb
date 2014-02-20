require 'faker'

5.times do 
  Tag.create(name: Faker::Lorem.word)
end

10.times do 
  post = Post.create(title: Faker::Lorem.sentence,
  	                 body: Faker::Lorem.paragraphs(paragraph_count = 4, supplemental = false).join(" ")
  	                )
  post.tags << Tag.find(rand(1..5))
end