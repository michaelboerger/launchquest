class Late < Area
    def arrive
        puts "\n\n<YOU ARE LATE - Area by Michael>\n"
        wait
        if @player.inventory.thyme
            puts "You are late but your thyme has put a... haha... SPRIG in your step (get it?)"
            puts "You're still late though so figure something out."
            puts "\n1. Slow and steady wins the race\n2. Attempt to use a rocket SPRIG\n3. Move on and hope no one notices!"
            print "\nCHOOSE YOUR CHOICE: "
        else
            puts "\nYou are on your way to start your Launch Academy Quest but you are late!"
            puts "\nYour poor time management will surely upset Dan."
            puts "\nDan is a morning person and doesn't have the patience for your shenanigans."
            puts "\n1. Slow and steady wins the race\n2. Attempt to use a rocket ship\n3. Attempt to use a Time Portal"
            print "\nCHOOSE YOUR CHOICE: "
        end
    end

    def check_command(choice)

        if choice == '1'
            puts "You attempt model your life off of allegorical turtles."
            wait
            puts "Slowing down doesn't speed you up!"
            wait
            puts "You lose one health point from Dan's wrath!\n"
            wait
        elsif choice == '2'
            if @player.inventory.thyme
                puts "Oh man these are getting awful, I'm sorry."
                wait
            else
                puts "You have to graduate from Launch Academy before getting rocket launching abilities."
                wait(4)
                puts "NOTE, IF YOU SAID: 'Actually, I have grauated from Launch Academy!'"
                wait
                puts "Well, good job by you."
                wait
                puts "Please stop trying to ruin my game's immersion."
                wait
            end
        elsif choice == '3'
            if @player.inventory.thyme
                puts "You either won the game or someone else made a room!"
                wait
                puts "The tension is killing me!"
                return End.new(@player)
            else
                puts "You attempt to use a time portal, unfortunately in your haste you use a thyme portal"
                wait
                puts "You get a sprig of thyme!"
                @player.inventory.thyme = true
                wait
                puts "Sprig is a fun word"
                wait
                puts "Sprig Sprig Sprig"
                wait
                puts "Spriiiiiig spirg sprig spriiig"
                wait
                puts "SprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprig"
                wait
                puts "SprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprig"
                puts "sprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigsprig"
                puts "sprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigsprig"
                puts "sprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigsprig"
                puts "sprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigSprigsprigsprigsprig"
                wait
                clear
                puts "OH WAIT YOU'RE LATE!"
                wait
            end
        else
            puts "YOU ARE TOO LATE TO BE MESSING AROUND WITH INVALID CHOICES!!!"
            wait
        end

        return false
    end
end
