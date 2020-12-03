require './character.rb'

class Brave < Character
    attr_reader :name, :offense, :defense
    attr_accessor :hp
    
    def attack(monster)
        puts "#{@name}の攻撃！"
        damage = @offense - monster.defense / 2
        puts "#{monster.name}に#{damage}のダメージを与えた！"

        monster.hp -= damage

        if monster.hp <= 0
            monster.hp = 0
        end
    end
end