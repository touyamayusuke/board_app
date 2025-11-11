# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if Rails.env == 'development'
  50.times do |i|
    Board.create(author_name: "ユーザー#{i}", title: "タイトル#{i}", body: "本文#{i}")
  end

  Tag.create([
    { name: 'Ruby' },
    { name: 'Rails' },
    { name: 'JavaScript' },
    { name: 'React' },
    { name: 'Vue' },
    { name: 'HTML' },
    { name: 'CSS' },
    { name: 'Web開発' },
    { name: 'プログラミング' },
  ])
end