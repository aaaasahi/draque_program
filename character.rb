class Character
    def initialize(**params)
        @name = params[:name]
        @hp = params[:hp]
        @offense = params[:offense]
        @defense = params[:defense]
    end
end