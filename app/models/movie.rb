class Movie < ApplicationRecord

    def movie_role
        
       Role.where({movie_id: read_attribute(:id)})

   end

end
