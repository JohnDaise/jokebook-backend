# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Mike")

joke1 = Joke.create(joke: "I was fired from the keyboard factory yesterday. I wasn't putting in enough shifts.", user_id: 1)
joke2 = Joke.create(joke: "Without geometry life is pointless.", user_id: 1)
joke3 = Joke.create(joke: "Why did the girl smear peanut butter on the road? To go with the traffic jam.", user_id: 1)
joke4 = Joke.create(joke: "Who is the coolest Doctor in the hospital? The hip Doctor!", user_id: 1)
joke5 = Joke.create(joke: "What's black and white and read all over? The newspaper.", user_id: 1)
joke6 = Joke.create(joke:"If you’re struggling to think of what to get someone for Christmas. Get them a fridge and watch their face light up when they open it." , user_id: 1)


like1 = Like.create(user_id: 1, joke_id: 1)
