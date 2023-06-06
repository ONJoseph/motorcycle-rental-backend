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
third_user = User.create(name: 'John')
fourth_user = User.create(name: 'Grace')

# Seed some Vehicles for testing purposes
first_vehicle = Vehicle.create(
  model: '2023 Tesla Model S',
  picture: 'https://www.vippng.com/png/full/44-440423_model-png.png',
  description: 'The 2023 Tesla Model S is an all-electric luxury sedan that combines impressive performance, \
    cutting-edge technology, and elegant design. It is equipped with dual electric motors that deliver instant \
    acceleration and a long-range battery pack that offers an impressive driving range. The Model S features a \
    minimalist interior with a large touchscreen display and advanced driver-assistance features for enhanced safety.',
  price: 900,
  brand: 'Tesla',
  year: '2023-01-01',
  color: 'Black',
  registration_plate: 'ABC123',
  accidents: 0
)

second_vehicle = Vehicle.create(
  model: '2023 BMW 3 Series',
  picture: 'https://purepng.com/public/uploads/large/purepng.com-white-bmw-x3-carcarbmwvehicletransport-961524661340tuwek.png',
  description: 'The 2023 BMW 3 Series is a luxury compact sedan that offers a perfect blend of style, performance, \
    and comfort. It features a range of powerful engines, including turbocharged four-cylinder and six-cylinder options, \
    delivering responsive acceleration and smooth handling. The 3 Series boasts a refined interior with premium materials, \
    advanced infotainment system, and driver-assistance technologies for a luxurious driving experience.',
  price: 750,
  brand: 'BMW',
  year: '2023-01-01',
  color: 'White',
  registration_plate: 'DEF456',
  accidents: 0
)

third_vehicle = Vehicle.create(
  model: '2023 Mercedes-Benz E-Class',
  picture: 'https://purepng.com/public/uploads/large/51506279619zqpgkosu9sqb394pfu7o7fwxbcvkjteqqgvopsnd1gmwl6uw8yao504kgoxwmzv9vtfuatlovqzgtintvuqhf1nzwyv7u1n1t0gf.png',
  description: 'The 2023 Mercedes-Benz E-Class is a sophisticated and luxurious midsize sedan that offers exceptional \
    comfort, advanced technology, and a range of powerful engine options. It features a stylish exterior design, a \
    meticulously crafted interior with high-quality materials, and innovative features like the MBUX infotainment system \
    and driver-assistance systems for a safe and enjoyable driving experience.',
  price: 850,
  brand: 'Mercedes-Benz',
  year: '2023-01-01',
  color: 'Silver',
  registration_plate: 'GHI789',
  accidents: 1
)

fourth_vehicle = Vehicle.create(
  model: '2023 Porsche 911 Carrera',
  picture: 'https://purepng.com/public/uploads/large/purepng.com-red-porsche-911-gt3-rs-4-carcarvehicletransportporsche-961524661235vbivb.png',
  description: 'The 2023 Porsche 911 Carrera is an iconic sports car that offers exhilarating performance and timeless design. \
    It is powered by a range of powerful engines, including turbocharged flat-six options, delivering impressive acceleration \
    and precise handling. The 911 Carrera features a driver-focused cockpit, advanced aerodynamics, and innovative technology \
    to provide an unmatched driving experience.',
  price: 1100,
  brand: 'Porsche',
  year: '2023-01-01',
  color: 'Red',
  registration_plate: 'JKL012',
  accidents: 0
)

fifth_vehicle = Vehicle.create(
  model: '2023 Audi Q5',
  picture: 'https://images.dealer.com/ddc/vehicles/2020/Audi/Q5%20e/SUV/perspective/front-left/2020_24.png',
  description: 'The 2023 Audi Q5 is a luxury compact SUV that combines versatility, comfort, and advanced technology. \
    It offers a range of powerful engines, including turbocharged four-cylinder and V6 options, delivering both efficiency \
    and performance. The Q5 features a spacious and luxurious interior, state-of-the-art infotainment system, and a host \
    of driver-assistance features for a refined and connected driving experience.',
  price: 800,
  brand: 'Audi',
  year: '2023-01-01',
  color: 'Blue',
  registration_plate: 'MNO345',
  accidents: 0
)

sixth_vehicle = Vehicle.create(
  model: '2023 Ford Mustang',
  picture: 'https://pngimg.com/uploads/mustang/mustang_PNG27.png',
  description: 'The 2023 Ford Mustang is an iconic American muscle car known for its powerful performance and classic design. \
    It is available with a range of engine options, including V6, EcoBoost, and V8 variants, delivering exhilarating power and \
    speed. The Mustang features a stylish and aggressive exterior, a driver-focused cockpit, and advanced technology for a \
    thrilling driving experience.',
  price: 950,
  brand: 'Ford',
  year: '2023-01-01',
  color: 'Yellow',
  registration_plate: 'PQR678',
  accidents: 0
)

# Create some reservations for each vehicle
users = [first_user, second_user, third_user, fourth_user]
vehicles = [first_vehicle, second_vehicle, third_vehicle, fourth_vehicle, fifth_vehicle, sixth_vehicle]

reservation1 = Reservation.create(start_date: '2023/05/09', return_date: '2023/05/12', user: User.first, vehicle: Vehicle.first, city: 'Lagos')
reservation2 = Reservation.create(start_date: '2023/05/13', return_date: '2023/05/15', user: User.second, vehicle: Vehicle.second, city: 'Lima')

# Conflict reservation
reservation3 = Reservation.create(start_date: '2023/06/01', return_date: '2023/06/12', user: User.second, vehicle: Vehicle.second, city: 'Pereira')
# reservation4 = Reservation.create(start_date: '2023/06/02', return_date: '2023/06/13', user: User.first, vehicle: Vehicle.second, city: 'Pereira')
# Return date greater than start date
# reservation5 = Reservation.create(start_date: '2023/05/20', return_date: '2023/05/19', user: User.second, vehicle: Vehicle.third, city: 'Trujillo')
# Updated to busy date
reservation16 = Reservation.create(start_date: '2023/06/09', return_date: '2023/06/12', user: User.first, vehicle: Vehicle.first, city: 'Loja')