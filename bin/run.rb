require_relative '../config/environment'
require 'pry'

puts "----------WELCOME TO ANIME PICKER!----------"

puts "Please create a username"
$username = gets.chomp

def main_menu
    User.find_or_create_by(username: $username)
    puts "Welcome, #{$username}"
    puts "What would you like to do"
    puts "1. See my list of my animes"
    puts "2. Add an anime to my list"
    puts "3. Highest rated anime in database"
    puts "4. See my stats"
    puts "5. Exit =("
    input = gets.chomp

    if input == "1" 
        if User.find_by(username: $username).animes.length < 1
            puts "No animes found =("
            puts "----------------------------------"
        else 
            anime_titles = User.find_by(username: $username).animes.map{|anime| anime.title}
            puts anime_titles 
        end
    end

    if input == "2"
        puts "What anime would you like to add?"
        anime_title = gets.chomp
        Anime.add(anime_title, $username)
    end

    if input == "3"
        puts Anime.sort_by_ratings
    end

    if input == "4"
        puts "pasta 4"
    end

    if input == "5"
        puts "Goodbye #{$username}"
        return
    end
    main_menu
end

main_menu


