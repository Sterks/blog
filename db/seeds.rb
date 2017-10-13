# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Post.create({
    title: Faker::Book.title,
    summary: Faker::Lorem.sentence(20) ,
    body: Faker::Lorem.paragraph(10),
    image: File.open(File.join(Rails.root, "app/assets/images/1.jpg"))
})

  Tag.create({
      name: Faker::Lorem.word
})
  Tagging.create({
      tag_id: Tag.last.id,
      post_id: Post.last.id
})
end