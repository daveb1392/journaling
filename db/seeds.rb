# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


meditations = [
    {category: "Mindful", author:"Anil", url:"https://www.fragrantheart.com/audio/relaxation/stress-relief.mp3"},
    {category: "Loving Kindness", author:"David", url:"https://www.fragrantheart.com/audio/relaxation/deep-relaxation-nomusic.mp3"},
    {category: "Unguided", author:"Mani", url:"https://www.fragrantheart.com/audio/relaxation/ground-yourself-and-breath-into-your-belly-nomusic.mp3"},
]

meditations.each {|meditation| Meditation.create(meditation)}