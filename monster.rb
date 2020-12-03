require './character.rb'

class Monster < Character
    attr_reader :name, :offense, :defense
    attr_accessor :hp

    def initialize(**params)
        @name = params[:name]
        @hp = params[:hp]
        @offense = params[:offense]
        @defense = params[:defense]
    end

    def attack(brave)
        puts "#{@name}の攻撃！"
        damage = @offense - brave.defense / 2
        puts "#{brave.name}に#{damage}のダメージを与えた！"

        brave.hp -= damage

        if brave.hp <= 0
            brave.hp = 0
        end
    end
end
