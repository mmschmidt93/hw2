class Movie < ApplicationRecord

        def actors
            
            Role.where({ movie_id: read_attribute(:id) })

        end
    
end
