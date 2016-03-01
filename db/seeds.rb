# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(display_name: "test_user", email: "msmithros@hotmail.com", password: "testpassword", password_confirmation:
    "testpassword", )

Comment.create(user: User.first)

Fact.create(user: User.first)

Evidence.create(user: User.first, fact: Fact.first)

Vote.create(user: User.first, evidence: Evidence.first)
