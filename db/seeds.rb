# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
administrator = Role.create(name: 'administrator')
company = Role.create(name: 'company')
candidate = Role.create(name: 'candidate')

# Create user admin
User.create(name: 'admin', username: 'admin', email: 'admin@admin.com', password: 'admin@admin.com',
            password_confirmation: 'admin@admin.com', role_id: 1)

# Create Companies
User.create(name: 'Facebook', username: 'facebook', email: 'facebook@facebook.com', password: 'facebook@facebook.com',
            password_confirmation: 'facebook@facebook.com', role_id: 2)
User.create(name: 'Google', username: 'google', email: 'google@google.com', password: 'google@google.com',
            password_confirmation: 'google@google.com', role_id: 2)

# Create Candidates
User.create(name: 'Gaston G', username: 'gastong', email: 'gastong@gastong.com', password: 'gastong@gastong.com',
            password_confirmation: 'gastong@gastong.com', role_id: 3)
User.create(name: 'Bill G', username: 'billgates', email: 'billgates@billgates.com', password: 'billgates@billgates.com',
            password_confirmation: 'billgates@billgates.com', role_id: 3)
User.create(name: 'Elon M', username: 'elonmusk', email: 'elonmusk@elonmusk.com', password: 'elonmusk@elonmusk.com',
            password_confirmation: 'elonmusk@elonmusk.com', role_id: 3)

# Create Job Alerts
JobAlert.create(title: 'Junior Developer', description: 'Just kidding', user_id: 2)
JobAlert.create(title: 'Super Jedi Developer wanted', description: 'Experience in Ruby On Rails', user_id: 3)
JobAlert.create(title: 'Padawan Developer', description: 'Padawan Developer wanted', user_id: 2)

# Create relations
Follow.create(follower_id: 5, following_id: 1, status: 2)
Follow.create(follower_id: 4, following_id: 2, status: 1)
Follow.create(follower_id: 6, following_id: 3, status: 0)
