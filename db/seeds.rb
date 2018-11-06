# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Homer", password_digest: "$2a$10$XtXgu3m5sZaxxWeTM2WaYukwhq/S53T9f6r2Hg6fU7seMLJgpbwG2", bio: "Homer is one of the most influential characters in the history of television, and is widely considered to be an American cultural icon. The British newspaper The Sunday Times described him as 'the greatest comic creation of [modern] time'. He was named the greatest character 'of the last 20 years' in 2010 by Entertainment Weekly, was ranked the second-greatest cartoon character by TV Guide, behind Bugs Bunny, and was voted the greatest television character of all time by Channel 4 viewers. For voicing Homer, Castellaneta has won four Primetime Emmy Awards for Outstanding Voice-Over Performance and a special-achievement Annie Award. In 2000, Homer and his family were awarded a star on the Hollywood Walk of Fame." )
user2 = User.create(name: "Tina", password_digest: "$2a$10$QGnxq1uVxTP38stW9FMJkuA1/Zi6lx.0Y5asbtXw5n0VhtBDdq8we", bio: "Tina Belcher is the oldest of the three Belcher children and is a socially awkward and insecure character. She is like many teenage girls, fantasizing over her crushes and being a fan of boy groups such as 'Boyz 4 Now.' She likes horses, rainbows, butts, zombies, writing erotic fiction, and movies. Tina has a massive crush on Jimmy Pesto (Bob's rival)'s son, Jimmy Jr. who doesn't seem to notice Tina's affections. She is a hopeless romantic and writes various fanfiction about Jimmy Jr and her life. Out of the three siblings, Tina is arguably the most responsible though Gene and Louise take advantage of her innocence. Like everyone else in her family, Tina has black hair and black eyes and wears glasses like her mother. She is 13 years old." )
user3 = User.create(name: "Spongebob", password_digest: "$2a$10$xKoqlNhbNTi5wTdIMnfgC.TUy//r5NKE0hDcOqA6zQI.u2/kGuF/m", bio: "SpongeBob is a good-natured, optimistic, naïve, and enthusiastic yellow sea sponge residing in the undersea city of Bikini Bottom alongside an array of anthropomorphic aquatic creatures. He works as a fry cook at a local fast food restaurant, the Krusty Krab, to which he is obsessively attached. At work, SpongeBob answers to Eugene Krabs, a greedy crab who shows SpongeBob favor, alongside his ill-tempered, snobbish next-door neighbor Squidward Tentacles. His hobbies include jellyfishing, practicing karate under his sensei Sandy Cheeks, and blowing bubbles." )

joke1 = Joke.create(joke: "I was fired from the keyboard factory yesterday. I wasn't putting in enough shifts.", user_id: 1)
joke2 = Joke.create(joke: "Without geometry life is pointless.", user_id: 1)
joke3 = Joke.create(joke: "Why did the girl smear peanut butter on the road? To go with the traffic jam.", user_id: 1)
joke4 = Joke.create(joke: "Who is the coolest Doctor in the hospital? The hip Doctor!", user_id: 1)
joke5 = Joke.create(joke: "What's black and white and read all over? The newspaper.", user_id: 1)
joke6 = Joke.create(joke:"If you’re struggling to think of what to get someone for Christmas. Get them a fridge and watch their face light up when they open it." , user_id: 1)


like1 = Like.create(user_id: 1, joke_id: 1)
