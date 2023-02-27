class Movie < ActiveRecord::Base
   def self.create_with_title(title)
      new_movie=Movie.create(title:title)
   end

   def self.first_movie 
    Movie.first
   end

   def self.last_movie
    Movie.last
   end

   def self.movie_count
    Movie.count
   end

   def self.find_movie_with_id(id)
    Movie.find(id)
   end
    def self.find_movie_with_attributes(title: "Movie_0", release_date: 2000)
        found_movie=Movie.find_by(title:title)
    end

    def self.find_movies_after_2002
       found_movies=Movie.where("release_date > ?",2002)
    end

    def update_with_attributes(title: "Even Awesomer Flick")
       self.title = title
    end

    def self.update_all_titles(new_title)
        Movie.update(title:new_title)
    end

    def self.delete_by_id(id)
        old_movie =Movie.find(id)
        old_movie.destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
   
end