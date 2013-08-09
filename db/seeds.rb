# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Cart.delete_all
LineItem.delete_all
Product.create(
  title: 'Programming Ruby 1.9',
  description:
    %{<p>
      Ruby is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
    </p>},
  image_url: 'ruby.jpg',
  price: 49.95)

Product.create(
  title: 'CoffeeScript',
  description:
    %{<p>
      CoffeeScript is JavaScript done right. It provides all of JavaScript's
      functionality wrapped in a cleaner, more succinct syntax. In the
      first book on this exciting new language.
    </p>},
  image_url: 'coffee.jpg',
  price: 34.95)
