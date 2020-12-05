class Character 
    attr_reader :name, :offense, :defense
    attr_accessor :hp
    def initialize(**params)
        @name = params[:name]
        @hp = params[:hp]
        @offense = params[:offense]
        @defense = params[:defense]
    end

    def self.display_status(*characters)
        puts "*=*=*=*=*=*=*=*=*=*=*"
        characters.each do |character|
            puts "【#{character.name}】HP: #{character.hp}"
        end
        puts "*=*=*=*=*=*=*=*=*=*=*"
    end

end