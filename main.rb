require "./classes.rb"

puts "What is your name?"
name = gets

Ken = FIGHTER.new("Ken", 5,5,5)
Ryu = FIGHTER.new("Ryu", 7,7,7)
Player = FIGHTER.new(name, rand(4..8), rand(4..8), rand(4..8))

p "#{Player.name}'s Stats: Strenght: #{Player.strength}, Defense: #{Player.defense}, Luck: #{Player.luck}, Life: #{Player.life}"

p "---------- YOUR TRAINING ----------"
10.times {  puts "Its time to train for my fight! [t]rain!"
            input = gets.chomp 
        
            if input === "t"
                if rand(3) === 1
                    Player.lift_weights
                    p "You Lift Weights and your Strength is now #{Player.strength}"
                elsif rand(3) === 2
                    Player.endurance_training
                    p "You do some Endurance Training and your Defense is now #{Player.defense}"
                else rand(3) === 3
                    Player.coin_in_fountain
                    p "You flick a coin in a magical fountain and your Life is now #{Player.life}"
                end
            end       
        }
p "---------- KEN'S TRAINING ----------"
10.times {  puts "Ken begins his training for the day!"
            if rand(3) === 1
                Ken.lift_weights
                p "Ken Lifts Weights and his Strength is now: #{Ken.strength}"
            elsif rand(3) === 2
                Ken.endurance_training
                p "Ken does some Endurance Training and his Defense is now: #{Ken.defense}"
            else rand(3) === 3
                Ken.coin_in_fountain
                p "Ken flicks a coin in a magical fountain and his Life is now: #{Ken.life}"
            end
        }
p "---------- RYU'S TRAINING ----------"
10.times {  puts "Ryu begins his training for the day!"
            if rand(3) === 1
                Ryu.lift_weights
                p "Ryu Lifts Weights and his Strength is now: #{Ryu.strength}"
            elsif rand(3) === 2
                Ryu.endurance_training
                p "Ryu does some Endurance Training and his Defense is now: #{Ryu.defense}"
            else rand(3) === 3
                Ryu.coin_in_fountain
                p "Ryu flicks a coin in a magical fountain and his Life is now: #{Ryu.life}"
            end
        }
p "---------- THE STATS ----------"
p "Your stats are now... Strenght: #{Player.strength}, Defense: #{Player.defense}, Luck: #{Player.luck}, Life: #{Player.life}"   
p "Ken's stats are now... Strenght: #{Ken.strength}, Defense: #{Ken.defense}, Luck: #{Ken.luck}, Life: #{Ken.life}"
p "Ryu's stats are now... Strenght: #{Ryu.strength}, Defense: #{Ryu.defense}, Luck: #{Ryu.luck}, Life: #{Ryu.life}"

p "---------- THE FIGHT ----------"
while true do
    if Player.luck > Ryu.luck
        p "You will fight Ken!"
        p "Your Life: #{Player.life} - Ken's Life: #{Ken.life}"
        p "Your Strength: #{Player.strength} - Ken's Strength: #{Ken.strength}"
        p "Your Defense: #{Player.defense} - Ken's Defense: #{Ken.defense}"
        puts "Lets [F]ight!"
        input = gets.chomp
        if input === "f"
            Player.attack(Ken)
            Ken.attack(Player)
        end
        if Player.life <= 0
            puts "You were defeated, You Loose!"
            break
        end
        if Ken.life <= 0
            puts "Ken was defeated, You Win!"
            break
        end
    else
        p "You will fight Ryu!"
        p "Your Life: #{Player.life} - Ryu's Life: #{Ryu.life}"
        p "Your Strength: #{Player.strength} - Ryu's Strength: #{Ryu.strength}"
        p "Your Defense: #{Player.defense} - Ryu's Defense: #{Ryu.defense}"
        puts "Lets [F]ight!"
        input = gets.chomp
        if input === "f"
            Player.attack(Ryu)
            Ryu.attack(Player)
        end
        if Player.life <= 0
            puts "You were defeated, You Loose!"
            break
        end
        if Ryu.life <= 0
            puts "Ryu was defeated, You Win!"
            break
        end
    end

end
        
