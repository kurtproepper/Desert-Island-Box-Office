User.create!({ name: "Test Name", email: "test@test.com", password: "password", password_confirmation: "password" })
User.create!({ name: "Next Name", email: "next@test.com", password: "password", password_confirmation: "password" })

Movie.create!({ title: "Star Wars", release_date: "1977", director: "George Lucas", overview: "It's Star Wars", poster_path: "https://m.media-amazon.com/images/I/81P3lDJbjCL._AC_SY450_.jpg" })
Movie.create!({ title: "Raiders of the Lost Ark", release_date: "1981", director: "Steven Speilberg", overview: "It's Indiana Jones", poster_path: "https://cdn.shopify.com/s/files/1/1057/4964/products/Raiders-of-the-Lost-Ark-Vintage-Movie-Poster-Original-1-Sheet-27x41-7519_7aadef65-2d21-4725-98c4-a30235764b87.jpg?v=1638648421" })
Movie.create!({ title: "Blade Runner", release_date: "1982", director: "Ridley Scott", overview: "It's Blade Runner", poster_path: "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/803274d62004eb9144046c0cb0d188bd_5162e4aa-30b8-44f5-aa08-1ee481addd07_450x.jpg?v=1573585462" })
