# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(email: 'admin@example.com', password: 'SuperAdmin1234', password_confirmation: 'SuperAdmin1234')

15.times do
    Course.create! ([{
        title: Faker::Educator.course_name,
        description: Faker::TvShows::GameOfThrones.quote,
        short_description: Faker::JapaneseMedia::OnePiece.quote,
        language: "English",
        level: "Beginner",
        price: Faker::Number.between(from: 10, to: 200),
        user_id: User.first.id
    }])
end