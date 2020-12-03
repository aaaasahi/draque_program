require './character.rb'

class Monster < Character
    def attack(brave)
        puts "#{@name}の攻撃！"
        damage = @offense - brave.defense / 2
        puts "#{brave.name}に#{damage}のダメージを与えた！"

        brave.hp -= damage

        brave.hp = 0 if  brave.hp <= 0
    end
end
