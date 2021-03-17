class Movie < ActiveRecord::Base
  
  def self.all_ratings 
    #return ['G','PG','PG-13','R']
    %w(G PG PG-13 R) # Same as above, this is more Ruby idiomatic
  end
  
  def self.filter_and_sort(selected_ratings, sorting)
      Movie.where(rating: selected_ratings).order(sorting)
  end
end
