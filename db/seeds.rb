# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


meditations = [
    {category: "Mindful", author:"Anil", url:"www.google.com"},
    {category: "Loving Kindness", author:"David", url:"www.flatironschool.com"},
    {category: "Unguided", author:"Mani", url:"www.whatever.com"},
]

meditations.each {|meditation| Meditation.create(meditation)}