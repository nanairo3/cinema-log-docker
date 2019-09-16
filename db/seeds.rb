# frozen_string_literal: true

User.create(
  name: 'test',
  email: 'test@example.com',
  password: 'testtest'
)

Cinema.create(
  image: 'https://image.tmdb.org/t/p/original/pSfwXxP94xktZKn3UaeVe6VdFZl.jpg',
  title: 'The Lion King',
  movie_id: 420818
)
Post.create(
  content: 'test',
  cinema_id: 1,
  user_id: 1
)

