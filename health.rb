puts "=========== Welcome to health monitor ===========\n\n"

puts "Add weekend values to calculate your week day goals"

class Health
   @@prompt = "> "
   def exercise
     
     puts "\n*Body: Did you run or lift weights this weekend?  Y/N ?"
     print @@prompt
     
         while @@exercise_var = gets.chomp.downcase
           case @@exercise_var
                when "y"
                   puts "Great work!"
                   sleep 2
                   break
                when "n"
                  puts "OK.... Well you should run once this week, and also take a walk once after work"
                  sleep 2
                  break
                else
                 puts "Umh...  please type 'y' or 'n'  for yes or no."
                 print @@prompt
           end
        end
   end
   
   def fun
     puts "\n*Mental optimism: Did you do something you ENJOY this weekend?"
     puts "IE: visit a friend, read a great book, etc  -- Y/N? "
     print @@prompt
  
           while @@fun_var = gets.chomp.downcase
                 case @@fun_var
                         when "y"
                           puts "Good, I bet you enjoyed that!\n\n Keep up the great work"
                           sleep 2
                           break
                         when "n"
                           puts "What would you like to do for some good old fashioned fun?"
                           puts " 1) - Visit a relative?"
                           puts " 2) - Call a old friend?"
                           puts " 3) - Read a good book?"
                           puts "Choice 1,2,3 ?" 
                                   while @@fun_var_todo = gets.chomp
                                     case @@fun_var_todo
                                       when "1"
                                         puts "Great maybe you should text them now?"
                                         sleep 2
                                         break
                                       when "2"
                                         puts "Awesome, who do you miss? Give them a call"
                                         sleep 2
                                         break
                                       when "3"
                                         puts "Maybe that book you've been wanting to finish would make a great evening"
                                         sleep 2
                                         break
                                       else
                                         puts "1, 2, 3"
                                         print @@prompt
                                      end
                                    end
                           break
                        else
                          # error message if selection not y or n
                          puts"Error: choose y or n"
                          print @@prompt
                 end
           end
   end
   
   def summary
     # puts "Starting summary "
     puts "\n   SUMMARY:"
     if (@@exercise_var == "y" && @@fun_var == "y")
       puts "Excellent work!!   You should notice the great health benefits because your had work!"
       #sleep 2
     elsif (@@exercise_var == "y" && @@fun_var == "n")
       puts "[x]Good job exercising. \n[ ] ===> Get started on the positive mind work! "
         case @@fun_var_todo
          when "1" 
            puts "To do: Visit relative"
          when "2" 
            puts "To do: Call your friend!"
          when "3"  
            puts "To do: Take time to read"
          else
            puts "Error on Mental selection"
         end
     elsif (@@exercise_var == "n" && @@fun_var == "y")
       puts "[ ]===> Work those muscles!! \n[x]Good job on the mindfulness"
       
       # Error options for incorrect user selection for menus not including y or n
     elsif (@@exercise_var == "n" && @@fun_var != "y")
       puts "[ ]===> Work those muscles!! \n error for to do suggestion"
     elsif (@@exercise_var == "n" && @@fun_var == "y")
       puts "[ ]===> error for to do suggestion \n [x]Good job on the mindfulness"
     else
        puts "summary calculation error" 
     end
   end
   
end
# function calls bob d
user = Health.new
user.exercise
user.fun
user.summary

  