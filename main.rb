require './brave.rb'
require './monster.rb'

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
#monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)



loop do
    brave.attack(monster)
    monster.attack(brave)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    break if monster.hp <= 0
    break if brave.hp <= 0
end

if brave.hp > 0
    puts "#{monster.name}を倒した！"
else
    puts "#{brave.name}はしんでしまった！"
end
