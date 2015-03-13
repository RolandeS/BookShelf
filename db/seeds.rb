# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


demo_user = User.create!(
    first_name: "Demo",
    last_name: "User",
    email: "demo.user@bookshelf.com",
    password: "1",
    password_confirmation: "1"
  )

#--------------------------
social_shelf = Shelf.create!(
  name: "Social",
  user: demo_user,
	)

# @ss = Shelf.where('name LIKE ?',"social%")
# @id = @ss.id

Book.create!(
  name: "Facebook",
  link: "www.facebook.com",
  note: "Just socialize here",
  shelf: social_shelf
	)
Book.create!(
  name: "Twitter",
  link: "www.twitter.com",
  note: "Just tweet here",
  shelf: social_shelf
	)
Book.create!(
  name: "LinkedIn",
  link: "www.linkedin.com",
  note: "Professional stuff here",
  shelf: social_shelf
	)
Book.create!(
  name: "Instagram",
  link: "www.instagram.com",
  note: "Just socialize here",
  shelf: social_shelf
	)

#--------------------------
bank_shelf = Shelf.create!(
  name: "Banks",
  user: demo_user
	)

Book.create!(
  name: "TD",
  link: "www.tdcanadatrust.com",
  note: "Check this weekly!!",
  shelf: bank_shelf
	)
Book.create!(
  name: "RBC",
  link: "www.rbcroyalbank.com",
  note: "My very old account",
  shelf: bank_shelf
	)

#--------------------------
email_shelf = Shelf.create!(
  name: "Emails",
  user: demo_user
	)

Book.create!(
  name: "Gmail",
  link: "www.gmail.com",
  note: "My personal emails",
  shelf: email_shelf
	)
Book.create!(
  name: "Yahoo",
  link: "www.yahoo.com",
  note: "My older personal emails",
  shelf: email_shelf
	)
Book.create!(
  name: "Hotmail",
  link: "www.hotmail.com",
  note: "My super old personal emails",
  shelf: email_shelf
	)

#--------------------------
news_shelf = Shelf.create!(
  name: "News",
  user: demo_user
	)

Book.create!(
  name: "CNN",
  link: "www.cnn.com",
  note: "Check this often",
  shelf: news_shelf
	)
Book.create!(
  name: "CBC",
  link: "www.cbc.ca/news/canada",
  note: "Check this often",
  shelf: news_shelf
	)

#--------------------------
shopping_shelf = Shelf.create!(
  name: "Shopping",
  user: demo_user
	)

Book.create!(
  name: "Amazon",
  link: "www.amazon.com",
  note: "Shop shop shop",
  shelf: shopping_shelf
	)

Book.create!(
  name: "Ebay",
  link: "www.ebay.com",
  note: "Shop shop shop",
  shelf: shopping_shelf
	)

