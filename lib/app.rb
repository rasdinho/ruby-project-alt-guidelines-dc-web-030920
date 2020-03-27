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
        puts "The NBA Sessions application"
    end
    
    def welcome
       puts " 
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

      def workout_prompt
        puts "Select a specialty to workout on!:"
        puts "1 for Defense, 2 for Offense, 3 for training"
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

        puts "Press 1 for main menu:"
        choice = get_input_from_user
        if choice.to_i == 1
            run
        end
    end

    def coaches_method 
        coach_prompt
        Coach.all.each { |coach|
            puts coach.name
        }
        puts "Press 1 for main menu:"
        choice = get_input_from_user
        if choice.to_i == 1
            run
        end
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

         puts "Press 1 for main menu:"
        choice = get_input_from_user
        if choice.to_i == 1
            run
        end   
    end

    def work_out
        workout_prompt
        choice = get_input_from_user
        if choice.to_i == 1
            def_workout
        elsif choice.to_i == 2 
            off_workout
        elsif choice.to_i == 3
            train_workout
        end 
        puts "----------------------------------------------------"

        puts "Press 1 for main menu:"
        choice = get_input_from_user
        if choice.to_i == 1
            run
        end
    end

    # def make_appointment(user, coach)
    #     puts "Type the number of the doctor you would like to make an appointment with:"
    #     num = gets.chomp.to_i
    #     doctor = doctors[num - 1]
    #     puts "You have selected #{doctor.name}. Type Y to proceed or N to go back to the main menu."
    #     selection = gets.chomp
    #     if(selection.downcase == 'y')
    #       puts "Type in the date and time you would like to book your appointment in the format MM-DD-YYYY 00:00"
    #       time = gets.chomp
    #       Appointment.create(patient_id: user.id, doctor_id: doctor.id, time: time)
    #       puts "Your appointment has been booked. See all your appointments below:"
    #       print_users_appointments(user)
    #     else
    #       selection_menu(user)
    #     end
    #   end

# ------------------------------------------------------
#players
def kobe_prompt
   puts "You've selected Kobe Bryant!" 
end
def mike_prompt
    puts "You've selected Michael Jordan!" 
 end
 def lebron_prompt
    puts "You've selected Lebron James!" 
 end
 def john_prompt
    puts "You've selected John Wall!" 
 end



# ------------------------------------------------------
    def defense_prompt
        puts " The defensive coach is Doc Rivers!"
    end

    def offense_prompt
        puts " The offensive coach is Phil Jackson!"
    end

    def training_prompt
        puts " The training coach is Greg Pop!"
    end
# -------------------------------------------------------
    def def_workout
        puts "Congrats you've picked to work on your defense with coach Doc Rivers!"
        puts "---------------------------------------------------------------------"
        puts "Chose the player you'd like to schedule your workout with"
        puts "Press 1 for Kobe Bryant, 2 for Michael Jordan, 3 for Lebron James, 4 for John Wall"
        usr_player_choice = get_input_from_user
        if usr_player_choice.to_i == 1
            kobe_prompt
        elsif usr_player_choice.to_i == 2 
            mike_prompt
        elsif usr_player_choice.to_i == 3
            lebron_prompt
        elsif usr_player_choice.to_i == 4
            john_prompt
        end

        puts "----------------------------------------------------"
        
        puts "Type the time you'd like to schedule your workout"
        usr_time_choice = get_input_from_user

        puts "Type the date you'd like to schedule your workout"
        usr_date_choice = get_input_from_user
        
          Session.create(player_id: usr_player_choice, coach_id: 1, session_date: usr_date_choice, session_time: usr_time_choice)
          puts "Your appointment has been booked. See all your appointments below:"
          if
          print_last_appointments
        else
          run
        end
    end

    def off_workout
        puts "Congrats you've picked to work on your offense with coach Phil Jackson!"
        puts "-----------------------------------------------------------------------"
        puts "What date and time is best for you ?"
    end

    def train_workout
        puts "Congrats you've picked to train with coach Greg Pop!"
        puts "----------------------------------------------------"
        puts "What date and time is best for you ?"
    end

    def print_last_appointments
        puts Session.coach_id
        puts Session.session_time
        puts Session.session_date
        

        # Session.order(session_time: :asc).limit(1)
        puts "Type anything to go back to the main menu."
        gets.chomp
        run
    end

    def find_player_byname(coach)
        Session.all.find do |session|
          Player.id 
        end
        return Player.id
      end

end 
   
    
 