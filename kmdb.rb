# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!




# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.

values = {name: "Christopher Nolan"}
person = Person.new(values)
person.save

director = Person.where({name: "Christopher Nolan"})[0]

values = {title: "Batman Begins", year_released: 2005, rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

Batman_Begins = Movie.where({title: "Batman Begins"})[0]

values = {title: "The Dark Knight", year_released: 2008, rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

Dark_Knight = Movie.where({title: "The Dark Knight"})[0]

values = {title: "The Dark Knight Rises", year_released: 2012, rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

Dark_Knight_Rises = Movie.where({title: "The Dark Knight Rises"})[0]

# Batman Begins
values = {name: "Christian Bale"}
person = Person.new(values)
person.save

Christian_Bale = Person.where({name: "Christian Bale"})[0]

values = {name: "Michael Caine"}
person = Person.new(values)
person.save

Michael_Caine = Person.where({name: "Michael Caine"})[0]

values = {name: "Liam Neeson"}
person = Person.new(values)
person.save

Liam_Neeson = Person.where({name: "Liam Neeson"})[0]

values = {name: "Katie Holmes"}
person = Person.new(values)
person.save

Katie_Holmes = Person.where({name: "Katie Holmes"})[0]

values = {name: "Gary Oldman"}
person = Person.new(values)
person.save

Gary_Oldman = Person.where({name: "Gary Oldman"})[0]

values = {movie_id: Batman_Begins.id, person_id: Christian_Bale.id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Batman_Begins.id, person_id: Michael_Caine.id, character_name: "Alfred"}
role = Role.new(values)
role.save

values = {movie_id: Batman_Begins.id, person_id: Liam_Neeson.id, character_name: "Ra's Al Ghul"}
role = Role.new(values)
role.save

values = {movie_id: Batman_Begins.id, person_id: Katie_Holmes.id, character_name: "Rachel Dawes"}
role = Role.new(values)
role.save

values = {movie_id: Batman_Begins.id, person_id: Gary_Oldman.id, character_name: "Commissioner Gordon"}
role = Role.new(values)
role.save

# The Dark Knight

values = {name: "Heath Ledger"}
person = Person.new(values)
person.save

Heath_Ledger = Person.where({name: "Heath Ledger"})[0]

values = {name: "Aaron Eckhart"}
person = Person.new(values)
person.save

Aaron_Eckhart = Person.where({name: "Aaron Eckhart"})[0]

values = {name: "Maggie Gyllenhaal"}
person = Person.new(values)
person.save

Maggie_Gyllenhaal = Person.where({name: "Maggie Gyllenhaal"})[0]

values = {movie_id: Dark_Knight.id, person_id: Christian_Bale.id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight.id, person_id: Heath_Ledger.id, character_name: "Joker"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight.id, person_id: Aaron_Eckhart.id, character_name: "Harvey Dent"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight.id, person_id: Michael_Caine.id, character_name: "Alfred"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight.id, person_id: Maggie_Gyllenhaal.id, character_name: "Rachel Dawes"}
role = Role.new(values)
role.save


# The Dark Knight Rises

values = {name: "Tom Hardy"}
person = Person.new(values)
person.save

Tom_Hardy = Person.where({name: "Tom Hardy"})[0]

values = {name: "Joseph Gordon-Levitt"}
person = Person.new(values)
person.save

Joseph_Gordon_Levitt = Person.where({name: "Joseph Gordon-Levitt"})[0]

values = {name: "Anne Hathaway"}
person = Person.new(values)
person.save

Anne_Hathaway = Person.where({name: "Anne Hathaway"})[0]

values = {movie_id: Dark_Knight_Rises.id, person_id: Christian_Bale.id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight_Rises.id, person_id: Gary_Oldman.id, character_name: "Commissioner Gordon"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight_Rises.id, person_id: Tom_Hardy.id, character_name: "Bane"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight_Rises.id, person_id: Joseph_Gordon_Levitt.id, character_name: "John Blake"}
role = Role.new(values)
role.save

values = {movie_id: Dark_Knight_Rises.id, person_id: Anne_Hathaway.id, character_name: "Selina Kyle"}
role = Role.new(values)
role.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

the_director = Person.where({id: movie.person_id})[0]

movies = Movie.all

for movie in movies
   puts "#{movie.title}   #{movie.year_released}    #{movie.rated}  #{the_director.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

the_movie = Movie.where({id: role.movie_id})[0]

actor = Person.where({id: role.person_id})[0]

batman = Movie.where({title: "Batman Begins"})[0]
first_movie = batman.movie_role

dark_knight = Movie.where({title: "The Dark Knight"})[0]
second_movie = dark_knight.movie_role

dark_knight_rises = Movie.where({title: "The Dark Knight Rises"})[0]
third_movie = dark_knight_rises.movie_role

#batman = Movie.all
#batman_casting = batman.movie_role

for roles in first_movie
    puts "#{the_movie.title} #{actor.name}   #{roles.character_name}"
end

for roles in second_movie
    puts "#{the_movie.title} #{actor.name}   #{roles.character_name}"
end

for roles in third_movie
    puts "#{the_movie.title} #{actor.name}   #{roles.character_name}"
end