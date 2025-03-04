# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Application.destroy_all
# Shelter.destroy_all
# Pet.destroy_all


# application = Application.create!(name: "Thomas Turner", address_street: "234 Sands St.", address_city: "Chicago", address_state: "Illinois", address_zip_code: 60007, description: "I love pets and have lots of space in the back yard", status: "pending")

# shelter_1 = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
# shelter_2 = Shelter.create(name: 'RGV animal shelter', city: 'Harlingen, TX', foster_program: false, rank: 5)
# shelter_3 = Shelter.create(name: 'Fancy pets of Colorado', city: 'Denver, CO', foster_program: true, rank: 10)


# shelter_1.pets.create(name: 'Mr. Pirate', breed: 'tuxedo shorthair', age: 5, adoptable: true)
# shelter_1.pets.create(name: 'Clawdia', breed: 'shorthair', age: 3, adoptable: true)
# shelter_3.pets.create(name: 'Lucille Bald', breed: 'sphynx', age: 8, adoptable: true)
# shelter_2.pets.create(adoptable: true, age: 3, breed: 'doberman', name: 'Lobster')
# shelter_2.pets.create(adoptable: false, age: 2, breed: 'saint bernard', name: 'Beethoven')
# shelter_2.pets.create(adoptable: false, age: 3, breed: 'Whippet', name: 'Annabelle')
# shelter_2.pets.create(adoptable: true, age: 3, breed: 'GSD', name: 'Charlie')


# pet_1 = Pet.create(adoptable: true, age: 1, breed: 'sphynx', name: 'Lucille Bald', shelter_id: shelter.id, application_id: application.id)
# pet_2 = Pet.create(adoptable: true, age: 3, breed: 'doberman', name: 'Lobster', shelter_id: shelter.id, application_id: application.id)
# pet_3 = Pet.create(adoptable: false, age: 2, breed: 'saint bernard', name: 'Beethoven', shelter_id: shelter.id, application_id: application.id)
# pet_4 = Pet.create(adoptable: false, age: 3, breed: 'Whippet', name: 'Annabelle', shelter_id: shelter.id, application_id: application.id)
# pet_5 = Pet.create(adoptable: true, age: 3, breed: 'GSD', name: 'Charlie', shelter_id: shelter.id, application_id: application.id)

@application = Application.create!(name: "Thomas Turner", address_street: "234 Sands St.", address_city: "Chicago", address_state: "Illinois", address_zip_code: 60007, description: "I love pets and have lots of space in the back yard", status: "In Progress")


shelter_1 = Shelter.create!(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
shelter_2 = Shelter.create!(name: 'RGV animal shelter', city: 'Harlingen, TX', foster_program: false, rank: 5)
shelter_3 = Shelter.create!(name: 'Fancy pets of Colorado', city: 'Denver, CO', foster_program: true, rank: 10)

@pet_1 = shelter_1.pets.create!(name: 'Mr. Pirate', breed: 'tuxedo shorthair', age: 5, adoptable: true)
shelter_2.pets.create!(name: 'Clawdia', breed: 'shorthair', age: 3, adoptable: true)
shelter_3.pets.create!(name: 'Lucille Bald', breed: 'sphynx', age: 8, adoptable: true)



pet_2 = Pet.create(adoptable: true, age: 1, breed: 'sphynx', name: 'Lucille Bald')
pet_3 = Pet.create(adoptable: true, age: 3, breed: 'doberman', name: 'Lobster')
pet_4 = Pet.create(adoptable: false, age: 2, breed: 'saint bernard', name: 'Beethoven')
pet_5 = Pet.create(adoptable: false, age: 3, breed: 'Whippet', name: 'Annabelle')
pet_6 = Pet.create(adoptable: true, age: 3, breed: 'GSD', name: 'Charlie')


PetApplication.create!(status: "pending",pet_id: @pet_1.id, application_id: @application.id)
