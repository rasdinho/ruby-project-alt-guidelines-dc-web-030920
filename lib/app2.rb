# class App
#     def the_logo 
#         # puts  "    
#         #             🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
        

#         #                                ________
#         #                         o     |   __   |
#         #                         \_ O   |  |__|  |
#         #                     ____/  |  |___WW___|
#         #                     __/   /        ||
#         #                                    ||
#         #                                    ||
#         #                     _______________||________________
#         #                                                                  "
#         #   sleep(2)                                                               


#         # puts"         
#         #                         #     # ######     #                 
#         #                         ##    # #     #   # #   
#         #                         # #   # #     #  #   #  
#         #                         #  #  # ######  #     #           
#         #                         #   # # #     # ####### 
#         #                         #    ## #     # #     # 
#         #                         #     # ######  #     #
                                    
#         #                     "
#         # puts   "🔥🔥🔥🔥🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🔥🔥🔥🔥"
#         # sleep(2)
#         # puts "This is your NBA application"
        
#     end







    
#     def menu
#        puts " 
#              type 1 to search for the NBA's top players, 
#              type 2 to search for the NBA's top coaches, 
#              type 3 to see a coaches specialty,
#              type 4 to schedule a workout with a coach: 
#              type 5 to cancel a workout session" 
#              choice = get_input_from_user
#              if choice.to_i == 1
#                  player_method
#              elsif choice.to_i == 2
#                  coaches_method
#              elsif choice.to_i ==3
#                  specialty
#              elsif choice.to_i ==4
#                  work_out    
#              elsif choice.to_i == 5
#                  cancel_session
#              end
#       end
    
#       def get_input_from_user
#         # use gets to capture the user's input. This method should return that input, downcased.
#         jquery = gets.strip
#         jquery
#       end
      
#       def player_prompt
#         puts "Here's the NBA's Top players!:"
#       end
      
#       def coach_prompt
#         puts "Here's the NBA's top coaches!:"
#       end

#       def specialty_prompt
#         puts "Type in a specialty(Defense, Offense, Training) 
#         to see it's coach!:"
#       end

     

#     #   def goodbye
#     #     puts "Goodbye!"
#     #   end



#       def run 
#         the_logo
#         menu
    
#         #  get_player_by_name 
#       end 

    
#       def destroy
#         # Class.find_by(id: <id>).destroy
#         # binding.pry
#       end

#       def cancel_session
#         binding.pry
#         choice = get_input_from_user
#         puts "Are you sure you want to cancel your session? Press 1 for yes and 2 for no"
#             if choice.to_i == 1
#                 #call destroy method here
#                 puts "Your session is succesfully cancelled"
#             else
#                 #call menu method?
#         # puts "Press 1 for main menu:"
#     # if choice.to_i == 1
#         end
#       end

#      def player_method
#         player_prompt
#         Player.all.each { |player|
#             puts player.name

#         }

#         puts "Press 1 for main menu:"
#         choice = get_input_from_user
#         if choice.to_i == 1
#             run
#         end
#     end
    
#     def coaches_method 
#         coach_prompt
#         Coach.all.each { |coach|
#             puts coach.name
#         }
#         puts "Press 1 for main menu:"
#         choice = get_input_from_user
#         if choice.to_i == 1
#             run
#         end
#     end

#     def specialty
#         specialty_prompt 
#         choice = get_input_from_user
#         if choice.to_s == "Defense"
#             defense_prompt
#         elsif choice.to_s == "Offense"
#             offense_prompt
#         elsif choice.to_s == "Training"
#             training_prompt
#         end 
#         Coach.all.map do |coach|
#          coach.specialty
#         end 

#          puts "Press 1 for main menu:"
#         choice = get_input_from_user
#         if choice.to_i == 1
#             run
#         end   
#     end

#     def schedule_session    
#         #Session(coach_id,player_id,session_date,session_time)
#     end

#     def workout_prompt
#         puts "Select a specialty to workout on!:"
#         puts "1 for Defense, 2 for Offense, 3 for training"
#         puts "Monday - Friday our coaches are available!"
#       end

#     def work_out
#         workout_prompt
#         choice = get_input_from_user
#         if choice.to_i == 1
#             defensive_workout #// 237
#         elsif choice.to_i == 2 
#             off_workout
#         elsif choice.to_i == 3
#             train_workout
#         end 
#         puts "----------------------------------------------------"

#         puts "Press 1 for main menu:"
#         choice = get_input_from_user
#         if choice.to_i == 1
#             run
#         end
#     end

    

#     # def make_appointment(user, coach)
#     #     puts "Type the number of the doctor you would like to make an appointment with:"
#     #     num = gets.chomp.to_i
#     #     doctor = doctors[num - 1]
#     #     puts "You have selected #{doctor.name}. Type Y to proceed or N to go back to the main menu."
#     #     selection = gets.chomp
#     #     if(selection.downcase == 'y')
#     #       puts "Type in the date and time you would like to book your appointment in the format MM-DD-YYYY 00:00"
#     #       time = gets.chomp
#     #       Appointment.create(patient_id: user.id, doctor_id: doctor.id, time: time)
#     #       puts "Your appointment has been booked. See all your appointments below:"
#     #       print_users_appointments(user)
#     #     else
#     #       selection_menu(user)
#     #     end
#     #   end

# # ------------------------------------------------------
# #players
# def kobe_prompt
#    puts "You've selected Kobe Bryant!" 
# end
# def mike_prompt
#     puts "You've selected Michael Jordan!" 
#  end
#  def lebron_prompt
#     puts "You've selected Lebron James!" 
#  end
#  def john_prompt
#     puts "You've selected John Wall!" 
#  end



# # ------------------------------------------------------
#     def defense_prompt
#         puts " The defensive coach is Doc Rivers!"
#     end

#     def offense_prompt
#         puts " The offensive coach is Phil Jackson!"
#     end

#     def training_prompt
#         puts " The training coach is Greg Pop!"
#     end
# # -------------------------------------------------------

#     def defensive_workout
#         puts "Congrats you've picked to work on your defense with coach Doc Rivers!"
#         puts "---------------------------------------------------------------------"
#         puts "Choose the player you'd like to schedule your workout with"
#         counter = 1
#         player_names = Player.all.map {|player_name| puts "Press #{counter}. #{player_name.name}" 
#         counter += 1}
#         usr_player_choice = get_input_from_user
#         if usr_player_choice.to_i == 1
#             kobe_prompt #// 209
#         elsif usr_player_choice.to_i == 2 
#             mike_prompt
#         elsif usr_player_choice.to_i == 3
#             lebron_prompt
#         elsif usr_player_choice.to_i == 4
#             john_prompt
#         end
#         usr_player_choice.to_i
#     # end

   

    
#      def create_appointment

#            puts "----------------------------------------------------"
        
#         puts "Type the time you'd like to schedule your workout"
#         usr_time_choice = get_input_from_user
    
#         puts "Type the date you'd like to schedule your workout"
#         usr_date_choice = get_input_from_user
        
#           Session.create(player_id: usr_player_choice, coach_id: 1, session_date: usr_date_choice, session_time: usr_time_choice)
#           puts "Your appointment has been booked. See all your appointments below:"
#             if
#                 print_last_appointments
#             else
#                 run
#             end
#     end
# end

#     def off_workout
#         puts "Congrats you've picked to work on your offense with coach Phil Jackson!"
#         puts "-----------------------------------------------------------------------"
#         puts "What date and time is best for you ?"
#     end

#     def train_workout
#         puts "Congrats you've picked to train with coach Greg Pop!"
#         puts "----------------------------------------------------"
#         puts "What date and time is best for you ?"
#     end

#     def print_last_appointments
#         binding.pry
#         puts Session.coach_id
#         puts Session.session_time
#         puts Session.session_date
        

#         # Session.order(session_time: :asc).limit(1)
#         puts "Type anything to go back to the main menu."
#         gets.chomp
#         run
#     end

#     def find_player_byname(coach)
#         Session.all.find do |session|
#           Player.id 
#         end
#         return Player.id
#       end

# end 
   
    
 
#     # def work_out
#     #     workout_pompt
#     # end

#     # def get_coach_by_name 
#     #     Coach.all.map{|coaches| 
#     #     binding.pry
#     #     coaches.name}
#     # end
   