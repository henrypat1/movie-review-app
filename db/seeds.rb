# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Review.destroy_all
User.destroy_all

@admin = User.create!(username: 'henry', email: 'henry@email.com', password: '123456')

puts "#{User.count} users created"

@titanic = Movie.create!(
  title: 'Titanic',
  year: '1997',
  director: 'James Cameron',
  poster_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxAs-VXYiRRFdNziU87v5rGhpcz6ektUYh8w&usqp=CAU',
  plot: 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.'
)
@pulpfiction = Movie.create!(
  title: 'Pulp Fiction',
  year: '1994',
  director: 'Quentin tarantino',
  poster_img: 'https://lh3.googleusercontent.com/proxy/GDWkzoSMxFAjvXrCE6bzeo_lYAilpBJIkXguKIA8zuYSElIwI1gIQFf7FpF-g4SYmgpKarLmaMIq-Ur2kfrT7YmFfU6Yj8A8iNkYFenpNCHSLZUmi9aWxN9bvsafEkX1b1dcILBRnpgJBvSLw61TC1o',
  plot: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'
)
@avatar = Movie.create!(
  title: 'Titanic',
  year: '2009',
  director: 'James Cameron',
  poster_img: 'data:image/jpeg;base64,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',
  plot: 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.'
)
@inception = Movie.create!(
  title: 'Inception',
  year: '2010',
  director: 'Christopher Nolan',
  poster_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDA0iYv6ieBI8PZtDkynVKwqTKyZuHxD1YI0w4YMQpz2i9SoEpNIegBDXY2GZIMV6DxKI&usqp=CAU',
  plot: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.'
)

puts "#{Movies.count}movies created"

Review.create!(review:'The greatest movie i have ever seen', movie: @titanic)

puts "#{Review.count} flavors created"