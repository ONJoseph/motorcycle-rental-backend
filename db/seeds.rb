# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'Admin')
first_user = User.create(name: 'Joseph Ogbole')
second_user = User.create(name: 'Diego C')

# Seed some Vehicles for testing purposes
first_vehicle = Vehicle.create(
  model: '2018 Jaguar F-Type Coupe',
  picture: 'https://simaautoservice.se/wp-content/uploads/2021/07/car-picture-transparent-background-8.png',
  description: 'The 2018 Jaguar F-Type Coupe is a luxury sports car that boasts sleek and stylish design, \
    exceptional performance, and advanced technology features.\n\nUnder the hood, it has a range of engine \
    options, including a base 2.0-liter turbocharged four-cylinder engine that produces 296 horsepower \
    and 295 lb-ft of torque, a 3.0-liter supercharged V6 engine that delivers 340 horsepower and 332 \
    lb-ft of torque, and a top-of-the-line 5.0-liter supercharged V8 engine that generates 575 horsepower \
    and 516 lb-ft of torque.',
  price: 550,
  brand: 'Land Rover',
  year: '2018-01-01',
  color: 'Gray',
  registration_plate: 'ABC123',
  accidents: 0
)

second_vehicle = Vehicle.create(
  model: '2020 Jaguar F-Type Coupe',
  picture: 'https://carprices.ae/wp-content/uploads/2022/04/2021-Jaguar-F-Type-Coupe-Banner.png',
  description: 'The 2020 Jaguar F-Type Coupe is a luxurious and sporty two-door coupe that exudes elegance and \
  high performance.\n\nThe car is equipped with a range of powertrain options, including a base 2.0-liter \
  turbocharged four-cylinder engine that produces 296 horsepower and 295 lb-ft of torque, a 3.0-liter supercharged \
  V6 engine that delivers 340 horsepower and 332 lb-ft of torque, and a top-of-the-line 5.0-liter supercharged V8 \
  engine that generates 575 horsepower and 516 lb-ft of torque. The engines are mated with an eight-speed automatic \
  transmission, which can be controlled via paddle shifters mounted on the steering wheel.',
  price: 650,
  brand: 'Land Rover',
  year: '2020-01-01',
  color: 'Light gray',
  registration_plate: 'DEF456',
  accidents: 0
)

third_vehicle = Vehicle.create(
  model: '2010 Audi TT RS Coupe',
  picture: 'https://www.freepnglogos.com/uploads/car-png/car-png-large-pictures-40.png',
  description: 'The 2010 Audi TT RS Coupe is a high-performance sports car that delivers an exhilarating driving \
    experience. It is powered by a 2.5-liter five-cylinder engine that produces an impressive 335 horsepower and \
    332 lb-ft of torque. This engine is paired with a six-speed manual transmission and all-wheel drive, providing \
    excellent handling and grip on the road.\n\nThe exterior of the TT RS Coupe is sleek and stylish, with a low \
    profile and a distinctive front grille. Inside, the cabin is well-appointed with high-quality materials and \
    advanced technology. Standard features include leather upholstery, automatic climate control, and a premium audio system.',
  price: 450,
  brand: 'Audi',
  year: '2010-01-01',
  color: 'Red',
  registration_plate: 'GHI789',
  accidents: 1
)

fourth_vehicle = Vehicle.create(
  model: '2014 VW Beetle Dune',
  picture: 'https://i.pinimg.com/originals/60/c6/05/60c6052cecf20a380007a5b1be98b68f.png',
  description: 'The 2014 VW Beetle Dune is a special edition of the iconic VW Beetle that offers a unique and \
    distinctive look. The Dune is inspired by the classic Baja Bugs, which were popular in off-road racing in \
    the 1960s and 1970s. The Dune has a raised ride height, wider body, and unique front and rear bumpers, \
    giving it a rugged and sporty appearance.',
  price: 350,
  brand: 'Volkswagen',
  year: '2014-01-01',
  color: 'Yellow',
  registration_plate: 'JKL012',
  accidents: 0
)

fifth_vehicle = Vehicle.create(
  model: '2004 Hummer H2',
  picture: 'https://www.freepngimg.com/thumb/car/31469-4-car-transparent-picture.png',
  description: 'The 2004 Hummer H2 is a powerful and rugged SUV known for its off-road capabilities. It features \
    a 6.0-liter V8 engine that delivers 316 horsepower and 360 lb-ft of torque. The H2 is built on a heavy-duty \
    truck platform, providing excellent durability and towing capacity. With its distinctive design and imposing \
    presence, the Hummer H2 is a true icon of the SUV world.',
  price: 1000,
  brand: 'Hummer',
  year: '2004-01-01',
  color: 'Victory Red',
  registration_plate: 'MNO345',
  accidents: 0
)

sixth_vehicle = Vehicle.create(
  model: '2015 Audi Sport Quattro',
  picture: 'https://purepng.com/public/uploads/large/purepng.com-yellow-audi-caraudicars-961524670899johme.png',
  description: 'The 2015 Audi Sport Quattro is a high-performance sports car that offers a thrilling driving \
    experience. It is powered by a 4.0-liter turbocharged V8 engine that produces an impressive 552 horsepower \
    and 516 lb-ft of torque. This engine is paired with an eight-speed automatic transmission and all-wheel drive, \
    providing excellent handling and acceleration on the road.',
  price: 700,
  brand: 'Audi',
  year: '2015-01-01',
  color: 'Yellow',
  registration_plate: 'PQR678',
  accidents: 0
)
