restaurants = {}

while true
    puts "\n< What is your favorite to eat? >"
    puts "-- Type 'add' to add a restaurants"
    puts "-- Type 'update' to update a restaurants"
    puts "-- Type 'display' to display all restaurants"
    puts "-- Type 'delete' to delete a restaurants"
    puts "-- If you end your work, please write 'exit'"
    
    choice = gets.chomp
    
    case choice
        when "add"
            
            puts "-- What is your favorite restaurants's name?"
            restaurant = gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                
                puts "-- Please write 'category(korean/chinese/japanese/western)' "
                category = gets.chomp
                
                if category == "korean" || "chinese" || "japanese" || "western"
                    puts "-- What is your favorite menu?"
                    menu = gets.chomp
                    
                else
                    puts "-- Rewrite about category."
                    break
                
                end
                
                puts "-- What is your rating(0~5)?"
                rating = gets.chomp.to_i
                    
                if rating > 0 && rating < 6
                    rating.to_i
                        
                else
                    puts "-- Rewrite about rating."
                    break
                    
                end
                
            value = []
            value = [category, menu, rating]
            restaurants[restaurant.to_sym] = value
            
            puts "**Add Success!**"
                
            else
                puts "-- Rewrite about name. Already exist it."
                
                    
            end
                
            
        when "update"
            
            puts "-- What is your updating about restaurant?"
            restaurant = gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                puts "-- Error! Does not exist."
                
            else
                puts "-- What is the new rating(0~5)?"
                rating = gets.chomp
                
                restaurants[restaurant.to_sym][2] = rating.to_i
                puts "**Update Success!**"
                
            end
                
        when "display"
            
            restaurants.sort_by
            
            puts "**Your Favorite Restaurants List**"
            
            if restaurants.nil?
                
                puts "-- Sorry. Restaurants list is empty."
                
            else
                
                restaurants.each do |k, v|
                    puts "#{k}: #{v}"
                end
                
            end
            
        when "delete"
            
            puts "-- Please write what is delete."
            restaurant = gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                puts "-- Error! Do not exist."
                
            else
                restaurants.delete(restaurant.to_sym)
                puts "**Delete Success!**"
            
            end
            
        when "exit"
            
            puts "-- Bye-Bye."
            break
        
        else
            
            puts "-- Error! Write one of 'add/update/display/delete/exit' "
            
    end

end