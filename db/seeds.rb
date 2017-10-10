# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



ollie = Spartan.create( name: 'Ollie Holden', email: 'oholden@spartaglobal.com', password: 'password', password_confirmation: 'password', bio: 'Ollie Holden is a trainer at Sparta Global', course: 'SDET', admin: true)

chris = Spartan.create( name: 'Chris Yarland', email: 'cyarland@spartaglobal.com', password: 'password', password_confirmation: 'password', bio: 'Chris is a trainee at Sparta Global', course: 'SDET', admin: false)

martha = Spartan.create( name: 'Martha Conway', email: 'mconway@spartaglobal.com', password: 'password', password_confirmation: 'password', bio: 'Martha is a trainee at Sparta Global', course: 'SDET', admin: false)

liam = Spartan.create( name: 'Liam North', email: 'lnorth@spartaglobal.com', password: 'password', password_confirmation: 'password', bio: 'Liam is a trainee at Sparta Global', course: 'SDET', admin: false)

implodingPuppies = Project.create(name: 'Imploding Puppies', summary: 'Imploding Puppies is an attempt to create a game like exploding kittens online.', url: 'https://chrisyarland-price.github.io/implodingPuppies/', image: 'imploding_puppies.png', technologies: 'HTML5 CSS JavaScript', published: true)

minesweeper = Project.create(name: 'Minesweeper', summary: "Minesweeper is a game", image: 'minesweeper.png')

battleships = Project.create(name: 'Battleships', summary: "A classic battleships game", url: 'https://ltnorth.github.io/project-battleship', image: 'battleships.png', technologies: 'HTML5 CSS JavaScript', published: true)

