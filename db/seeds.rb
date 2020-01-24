# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Game.destroy_all
GameRental.destroy_all



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
game4 = Game.create(title: "Super Mario Odessy", multiplayer: false, online: false, platform: "Nintendo Switch", genre: adventure, image: "https://www.gaminginstincts.com/wp-content/uploads/2017/11/super-mario-odyssey.png")
game5 = Game.create(title: "Legend of Zelda : Breath of the Wild", multiplayer: false, online: false, platform: "Nintendo Switch", genre: adventure, image: "https://www.zelda.com/breath-of-the-wild/assets/icons/BOTW-Share_icon.jpg")
game6 = Game.create(title: "Pokemon : Sword", multiplayer: true, online: true, platform: "Nintendo Switch", genre: adventure, image: "https://hb.imgix.net/1f0d5ad3ef38f7ad8b7e9234ce901ef2619ee351.jpg?auto=compress,format&fit=crop&h=353&w=616&s=692d1527993c44430ed42865baf90169")
game7 = Game.create(title: "Horizon Zero Dawn", multiplayer: false, online: false, platform: "PS4", genre: adventure, image: "https://cdn.mos.cms.futurecdn.net/jQ4gPVdmTPh68JFMWbZRA4.jpg")
game8 = Game.create(title: "NBA 2k ", multiplayer: true, online: true, platform: "Xbox One", genre: sports, image: "https://images10.newegg.com/BizIntell/item/32/205/32-205-489/NBA_2K20.jpg")
game9 = Game.create(title: "Fifa 20 ", multiplayer: true, online: true, platform: "PS4", genre: sports, image: "https://media.contentapi.ea.com/content/dam/ea/fifa/fifa-20/images/2019/07/fifa20-navtile-16x9-standardedition.png")
game10 = Game.create(title: "Madden 20", multiplayer: true, online: true, platform: "PS4", genre: sports, image: "https://images.daznservices.com/di/library/sporting_news/44/d3/madden-nfl-20-patrick-mahomes_1rtvl1rtb15rv1m0btr8iisu2u.jpg?t=1536164506&quality=100")
game11 = Game.create(title: " Civilization ", multiplayer: true, online: true, platform: "PC", genre: strategy, image: "https://c4.wallpaperflare.com/wallpaper/362/618/561/civilization-6-4k-civilization-vi-wallpaper-preview.jpg")
game12 = Game.create(title: "StarCraft", multiplayer: true, online: true, platform: "PS4", genre: strategy, image: "https://bnetcmsus-a.akamaihd.net/cms/page_media/MM3GXUMP70FC1510790248850.jpg")
game13 = Game.create(title: "Mario Kart", multiplayer: true, online: true, platform: "Nintendo Switch", genre: racing, image: "https://i.ytimg.com/vi/a3o_ZKWi-OU/maxresdefault.jpg")
game14 = Game.create(title: "Forza", multiplayer: true, online: true, platform: "PS4", genre: racing, image: "https://www.pcgamesn.com/wp-content/uploads/2019/01/forza-horizon-4-player-count-580x334.jpg")
game15 = Game.create(title: "Mario Party", multiplayer: true, online: true, platform: "Nintendo Switch", genre: party, image: "https://wallpapercave.com/wp/wp602273.jpg")
game16 = Game.create(title: "Grand Theft Auto 5", multiplayer: true, online: true, platform: "PS4", genre: action, image: "https://hb.imgix.net/ad3f96dfd21531e24ab72c3821a01049c8484982.jpg?auto=compress,format&fit=crop&h=353&w=616&s=9fc123b4c723d329d164b8ab02af5284")
game17 = Game.create(title: "World of Warcraft", multiplayer: true, online: true, platform: "PC", genre: mmo, image: "https://cdn-cf.gamivo.com/image_cover.jpg?f=122784&n=3419967348094113.jpg&h=6e5fefe09df99b326e9100b2dc529c48")
game18 = Game.create(title: "Animal Crossing", multiplayer: true, online: true, platform: "Nintendo Switch", genre: casual, image: "https://animal-crossing.com/assets/img/home/featured-amiibo.jpg")
game19 = Game.create(title: "Goat Simulator", multiplayer: false, online: false, platform: "PC", genre: simulation, image: "https://steamcdn-a.akamaihd.net/steam/apps/265930/header.jpg?t=1562514878")
game20 = Game.create(title: "Super Smash Bros Ultimate", multiplayer: true, online: true, platform: "Nintendo Switch", genre: action, image: "https://assets1.ignimgs.com/2018/06/13/super-smash-btros-ultimate---button-0001-1528851298611.jpg")






