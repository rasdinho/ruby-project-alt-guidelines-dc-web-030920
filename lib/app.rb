class App
    def the_logo 
        puts"       
        
     #     # ######     #    
     ##    # #     #   # #   
     # #   # #     #  #   #  
     #  #  # ######  #     # 
     #   # # #     # ####### 
     #    ## #     # #     # 
     #     # ######  #     #
        
        "
        sleep(1)
        puts "This is your NBA application"
    end
    
    def welcome
       puts " Hello, welcome to NBA Sessions,
             type 1 to search for the NBA's top players, 
             type 2 to search for the NBA's top coaches, 
             type 3 to see a coaches specialty,
             type 4 to schedule a workout with a coach: " 
      end
    
      def get_input_from_user
        # use gets to capture the user's input. This method should return that input, downcased.
        jquery = gets.strip
        jquery
      end
      
      def player_prompt
        puts "Here's the NBA's Top players!:"
      end
      
      def coach_prompt
        puts "Here's the NBA's top coaches!:"
      end

      def specialty_prompt
        puts "Type in a specialty(Defense, Offense, Training) 
        to see it's coach!:"
      end

      def workout_pompt
        puts "Select a day of the week to workout!:"
        puts "Monday - Friday our coaches are available!"
      end



      def run 
        the_logo
        welcome
        choice = get_input_from_user
        if choice.to_i == 1
            player_method
        elsif choice.to_i == 2
            coaches_method
        elsif choice.to_i ==3
            specialty
        elsif choice.to_i ==4
            work_out    
        end
        
      end 

     def player_method
        player_prompt
        Player.all.each { |player|
            puts player.name

        }
    end

    def coaches_method 
        coach_prompt
        Coach.all.each { |coach|
            puts coach.name
        }
    end

    def specialty
        specialty_prompt 
        choice = get_input_from_user
        if choice.to_s == "Defense"
            defense_prompt
        elsif choice.to_s == "Offense"
            offense_prompt
        elsif choice.to_s == "Training"
            training_prompt
        end 
        Coach.all.map do |coach|
         coach.specialty 
             
            
        end
    end

    def defense_prompt
        puts " The defensive coach is Doc Rivers!"
    end

    def offense_prompt
        puts " The offensive coach is Phil Jackson!"
    end

    def training_prompt
        puts " The training coach is Greg Pop!"
    end


    def work_out
        workout_pompt

    end


end 
   
    
   