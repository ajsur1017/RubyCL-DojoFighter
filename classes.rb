class FIGHTER
    def initialize (name, defense, strength, luck)
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = rand(80..100)
    end
    def name
        return @name
    end
    def defense
        return @defense
    end
    def strength
        return @strength
    end
    def luck
        return @luck
    end
    def life
        return @life
    end
    def damage
        @life -= 5
    end
    def defend
        @life -= 2
    end
    def lift_weights
        @strength += 1
    end
    def endurance_training
        @defense += 1
    end
    def coin_in_fountain 
        @life += 2
    end
    
    def attack (opponent)
        if @strength >= @defense
            puts "#{@name} attacks #{opponent.name}"
            opponent.damage
        else 
            puts "#{opponent.name} defended against the attack."
            opponent.defend
        end
    end
end

