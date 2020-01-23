# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Genre.destroy_all
Game.destroy_all
GameRental.destroy_all

user1 = User.create(username: "Mansour",password: "1234")
user2 = User.create(username: "Jenny",password: "1235")
user3 = User.create(username: "Marija",password: "1236")

rpg = Genre.create(name: "RPG")
shooter = Genre.create(name: "Shooter")
action = Genre.create(name: "Action")
adventure = Genre.create(name: "Adventure")
racing = Genre.create(name: "Racing")
party = Genre.create(name: "Party")
sports = Genre.create(name: "Sports")
simulation = Genre.create(name: "Simulation")
strategy = Genre.create(name: "Strategy")
mmo = Genre.create(name: "MMO")
casual = Genre.create(name: "casual")

game1 = Game.create(title: "Call of Duty: Modern Warfare", multiplayer: true, online: true, platform: "PS4", genre: shooter, image: "https://specials-images.forbesimg.com/imageserve/5ce8218fcd1f12000a2a49a4/960x0.jpg?fit=scale")
game2 = Game.create(title: "Astral Chain", multiplayer: false, online: false, platform: "Nintendo Switch", genre: rpg, image: "https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_AstralChain_image1600w.jpg" )
game3 = Game.create(title: "Nier Automata", multiplayer: false, online: false, platform: "PS4", genre: rpg, image: "https://nowcdkey.com/wp-content/uploads/2019/06/62077917_367313817245224_1300320701986635776_n.jpg")

# r1 = Review.create(content: "Great!", rating: 5)


