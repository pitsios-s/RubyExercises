#!/usr/bin/ruby

#This program behaves like a cinema database , 
#where you can add new movies , delete older ,
#update the ratings and display all of them.

movies = 
{
    spiderman: 4 ,
    batman: 3 ,
    thor: 5
}

choice = ""

while choice != "exit" do
   
    puts "\n\nPlease select one of the following choices : "
    puts "\"Add\" a new movie."
    puts "\"Update\" new movie."
    puts "\"Display\" all movies."
    puts "\"Delete\" new movie."
    puts "\"Exit\" program."
    print "Choice = "
    choice = gets.chomp
    puts "\n\n"
    case choice

    when "add"
        print "Please give the new movie's title : "
        title = gets.chomp.downcase
        
        if movies[title.to_sym].nil?
            print "Please give the rating of the new movie : "
            rating = gets.chomp
            rating.to_i!
            
            movies[title.to_sym] = rating
            puts "New movie added successfully!"
        else
            puts "Movie allready exists , and has a rating of #{movies[title.to_sym]}"
        end
        
    when "update"
        print "Please give the movie's title : "
        title = gets.chomp.downcase
        
        if movies[title.to_sym].nil?
            puts "No such movie exists"
        else
            print "Please give the new rating of the movie : "
            rating = gets.chomp
            rating = rating.to_i
            
            movies[title.to_sym] = rating
            puts "Movie rating updated successfully!"
        end
        
    when "display"
        movies.each { |key , value| puts "#{key}: #{value}" }
        
    when "delete"
        print "Please give the title of the movie that you want to delete : "
        title = gets.chomp
        
        if movies[title.intern].nil?
            puts "No such movie exists!"
        else
            movies.delete(title.to_sym)
            puts "Movie removed successfully"
        end
     
    when "exit"
        puts "Bye , bye\n"
     
    else
        puts "Error choice , please try again!"
        
    end
end
