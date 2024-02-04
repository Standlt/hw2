# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.



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
Role.destroy_all
Studio.destroy_all
Professional.destroy_all
# Generate models and tables, according to the domain model.
# TODO!
# check for unique identifiers & keys

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_studio1 = Studio.new
new_studio1["name"] = "Warner Bros."

new_movie1 = Movie.new
new_movie1["title"] = "Batman Begins"
new_movie1["year released"] = "2005"
new_movie1["rated"] = "PG-13"
new_movie1["studio id"] = new_studio1["id"]
new_movie1.save

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight"
new_movie2["year released"] = "2008"
new_movie2["rated"] = "PG-13"
new_movie2["studio id"] = new_studio1["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year released"] = "2012"
new_movie3["rated"] = "PG-13"
new_movie3["studio id"] = new_studio1["id"]
new_movie3.save

new_professional1 = Professional.new
new_professional1["name"] = "Christian Bale"
new_professional1.save

new_professional2 = Professional.new
new_professional2["name"] = "Michael Caine"
new_professional2.save

new_professional3 = Professional.new
new_professional3["name"] = "Liam Neeson"
new_professional3.save

new_professional4 = Professional.new
new_professional4["name"] = "Katie Holmes"
new_professional4.save

new_professional5 = Professional.new
new_professional5["name"] = "Gary Oldman"
new_professional5.save

new_professional6 = Professional.new
new_professional6["name"] = "Heath Ledger"
new_professional6.save

new_professional7 = Professional.new
new_professional7["name"] = "Aaron Eckhart"
new_professional7.save

new_professional8 = Professional.new
new_professional8["name"] = "Maggie Gyllenhaal"
new_professional8.save

new_professional9 = Professional.new
new_professional9["name"] = "Tom Hardy"
new_professional9.save

new_professional10 = Professional.new
new_professional10["name"] = "Joseph Gordon-Levitt"
new_professional10.save

new_professional11 = Professional.new
new_professional11["name"] = "Anne Hathaway"
new_professional11.save

new_role1 = Role.new
new_role1["character name"] = "Bruce Wayne"
new_role1["movie id"] =  new_movie1["id"]
new_role1["professional id"] = new_professional1["id"]
new_role1.save

new_role2 = Role.new
new_role2["character name"] = "Bruce Wayne"
new_role2["movie id"] =  new_movie2["id"]
new_role2["professional id"] = new_professional1["id"]
new_role2.save

new_role3 = Role.new
new_role3["character name"] = "Bruce Wayne"
new_role3["movie id"] =  new_movie3["id"]
new_role3["professional id"] = new_professional1["id"]
new_role3.save

new_role4 = Role.new
new_role4["character name"] = "Alfred"
new_role4["movie id"] =  new_movie1["id"]
new_role4["professional id"] = new_professional2["id"]
new_role4.save

new_role5 = Role.new
new_role5["character name"] = "Alfred"
new_role5["movie id"] =  new_movie2["id"]
new_role5["professional id"] = new_professional2["id"]
new_role5.save

new_role6 = Role.new
new_role6["character name"] = "Rachel Dawes"
new_role6["movie id"] =  new_movie1["id"]
new_role6["professional id"] = new_professional4["id"]
new_role6.save

new_role7 = Role.new
new_role7["character name"] = "Rachel Dawes"
new_role7["movie id"] =  new_movie2["id"]
new_role7["professional id"] = new_professional4["id"]
new_role7.save

new_role8 = Role.new
new_role8["character name"] = "Commissioner Gordon"
new_role8["movie id"] =  new_movie1["id"]
new_role8["professional id"] = new_professional5["id"]
new_role8.save

new_role9 = Role.new
new_role9["character name"] = "Commissioner Gordon"
new_role9["movie id"] =  new_movie3["id"]
new_role9["professional id"] = new_professional5["id"]
new_role9.save

new_role10 = Role.new
new_role10["character name"] = "Ra's Al Ghul"
new_role10["movie id"] =  new_movie1["id"]
new_role10["professional id"] = new_professional3["id"]
new_role10.save

new_role11 = Role.new
new_role11["character name"] = "Joker"
new_role11["movie id"] =  new_movie2["id"]
new_role11["professional id"] = new_professional6["id"]
new_role11.save

new_role12 = Role.new
new_role12["character name"] = "Harvey Dent"
new_role12["movie id"] =  new_movie2["id"]
new_role12["professional id"] = new_professional7["id"]
new_role12.save

new_role13 = Role.new
new_role13["character name"] = "Bane"
new_role13["movie id"] =  new_movie3["id"]
new_role13["professional id"] = new_professional9["id"]
new_role13.save

new_role14 = Role.new
new_role14["character name"] = "John Blake"
new_role14["movie id"] =  new_movie3["id"]
new_role14["professional id"] = new_professional10["id"]
new_role14.save

new_role15 = Role.new
new_role15["character name"] = "Selina Kyle"
new_role15["movie id"] =  new_movie3["id"]
new_role15["professional id"] = new_professional11["id"]
new_role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
