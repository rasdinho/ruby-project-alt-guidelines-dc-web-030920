class App

        def the_logo 
        puts  "    
                    🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
        

                                       ________
                                o     |   __   |
                                \_ O   |  |__|  |
                            ____/  |  |___WW___|
                            __/   /        ||
                                           ||
                                           ||
                            _______________||________________
                                                                         "
          sleep(3)                                                               


        puts"         
                                #     # ######     #                 
                                ##    # #     #   # #   
                                # #   # #     #  #   #  
                                #  #  # ######  #     #           
                                #   # # #     # ####### 
                                #    ## #     # #     # 
                                #     # ######  #     #
                                    
                            "
        puts   "🔥🔥🔥🔥🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️⛹️🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🔥🔥🔥🔥"
        sleep(2)
        puts "This is your NBA application"
        
    end


    def run 
        the_logo
        menu
       goodbye
    end 

    def menu
        puts " 
        Type 1 to see the NBA's top players 
        Type 2 to see the NBA's top coaches 
        Type 3 to see Coaches Specialties
        Type 4 to schedule a workout session with a coach and a player
        Type 5 to cancel a workout session
        Type 6 to see all sessions
        Type 7 to exit this application"
         
        
        menu_options
    end

    def get_input_from_user #allows us to put stuff in the terminal
        gets.strip
    end
    
    def menu_options
        choice = get_input_from_user
        if choice.to_i == 1
            all_players_names
            return_main_menu 
        elsif choice.to_i == 2
            all_coaches_names            
            return_main_menu 
        elsif choice.to_i ==3
            all_coaches_specialties 
            return_main_menu 
        elsif choice.to_i ==4
            schedule_workout   
            return_main_menu 
        elsif choice.to_i == 5
            cancel_session
            return_main_menu
        elsif choice.to_i == 6
            all_sessions 
            return_main_menu
        elsif choice.to_i == 7
            goodbye 
        end

    end
    
    def all_players_names 
        puts "These are the NBA's top players"
        counter = 1
        Player.all.each do |player| 
            puts "#{counter}. #{player.name}"        
            counter +=1
         end
    end
      
    def all_coaches_names
        puts "These are the NBA's top coaches"
        counter = 1
        Coach.all.each do |coach| 
            puts "#{counter}. #{coach.name}"
            counter +=1
        end
    end

    def all_coaches_specialties 
        counter = 1 #// Doc Rivers -  Defense
        Coach.all.each do |coach| 
            puts "#{counter}. #{coach.name} - #{coach.specialty}" 
            counter += 1 
        end
    end
    
    def coach_choice # Returns one coach_id
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Coaches and Specialties"
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        all_coaches_specialties
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Type the number of the desired coach:"
        choice = get_input_from_user.to_i
        # 1. Doc Rivers - Defense
        # 2. Phil Jackson - Offense
        if choice < 1 || choice > Coach.all.length
            coach_choice
            puts "chose a valid coach number"
        else
        # 3. Greg Pop - Training
        if choice == 1
            #return doc rivers
            coach_id = Coach.all.find_by(name: "Doc Rivers").id
        elsif choice == 2
            #return phil jackson
            coach_id =Coach.all.find_by(name: "Phil Jackson").id
        elsif choice == 3
            #return greg Pop
            coach_id = Coach.all.find_by(name: "Greg Pop").id
            end
        end
        coach_id
    end

    def player_choice
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Here is the list of all the players "
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        all_players_names
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Type the number of the desired player:"
        choice = get_input_from_user.to_i
        if choice < 1 || choice > Player.all.length
            player_choice
            puts "chose a valid player number"
        else
            if choice == 1
            #return Kobe Bryant's ID
                player_id = Player.all.find_by(name: "Kobe Bryant").id
            elsif choice == 2
            #return Micheal Jordan's ID
                player_id = Player.all.find_by(name: "Micheal Jordan").id
            elsif choice == 3
            #return Lebron James's ID
                player_id = Player.all.find_by(name: "Lebron James").id
            elsif choice == 4
            #return John Wall ID
                player_id = Player.all.find_by(name: "John Wall").id
            end
        player_id
        end
    end

    def date_for_workout
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts         "Monday - Friday"
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Please type the date in the following format (MM/DD/YYYY)"
        date = get_input_from_user
    end

    def time_for_workout 
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "The available times are from 12pm to 7pm"
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Please type the workout time in the following format 00:00"
        workout_time = get_input_from_user
    end

    def create_new_session(player_id, coach_id, session_date, session_time)
        new_session = Session.create(player_id: player_id, coach_id: coach_id, session_date: session_date, session_time: session_time)
        puts "Your Session has been created"
    end
    
    def schedule_workout 
        cc = coach_choice
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        pc = player_choice
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        dw = date_for_workout
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        tw = time_for_workout 
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"

        create_new_session(cc, pc, dw, tw)

        # binding.pry
        # X- ask for what coach you want and get coach_id
        # X- ask for what player you want and get player_id
        # X- ask for date input
        # X- ask for time input 
        # X- to schedule we need (coach_id, player_id, session_date(string), session_time (string))
        
    end
    def all_sessions
        all_sessions = Session.all()
        puts "These are all the sessions"
        counter = 1
        
        Session.all.each do |session| 
            coach = Coach.all.find_by(id: session.coach_id)  #car = Car.find_by(id:carid) #carid is was defined earlier
            player = Player.all.find_by(id: session.player_id)
            puts "ID: #{session.id}"        
            puts "COACH: #{coach.name}"
            # puts "PLAYER: #{player.name}"
            puts "DATE: #{session.session_date}"
            puts "TIME: #{session.session_time}"
            counter +=1
            puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
         end
         
    end
    
    
    def delete_session(id)
        Session.all.find(id).destroy
        puts "your workout session has been deleted"
    end
        
    def cancel_session
        all_sessions
        puts "🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀🏀"
        puts "Type the ID of the session you want to delete:"
        input = get_input_from_user
        id = input.to_i

        delete_session(id)
        #erase session from DB
       
    end
   
    def return_main_menu 
    puts "Press 'm' for main menu. Press any other letter to exit this program."
    choice = get_input_from_user  #check line 57
        if choice.to_s == "m"
            menu
        end
    end


    def goodbye
        puts "Thank you for visiting the NBA application
        
                                
                                    -|
                                    -' |
                                  -'   | __().
                             ==wkm=====|'/ /   `.O__
                                                 | `,
                                                _-^.
                                                `.  `---,
                                                  :
                     
                     
                     
                            ____________________________________
                           🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
                             
                     
        "
    end
    

end
