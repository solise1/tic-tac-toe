'''
1. Create a new game
2. Create a board
3. Ask players their names
4. Player 1 starts game
'''
class Player
    attr_reader :name

    def initialize(name, mark)
        @name = name
        @player_mark = mark
    end
end

class Board
    attr_accessor :board

    def initialize
        @board = [
            ["1", "-", "2", "-", "3"],
            ["-", "-", "-", "-", "-"],
            ["4", "-", "5", "-", "6"],
            ["-", "-", "-", "-", "-"],
            ["7", "-", "8", "-", "9"]
        ]
    end
end

class Game

    def initialize
        @board = Board.new
        @players = []
    end

    def startGame
        marks = ["X","O"]
        marks.each do |mark|
            print "Enter player #{mark}'s name: "
            name = gets
            @players.push(Player.new(name,marks[x]))
        end
        
        while @board.all? { |i| i.is_a?(String) } == false
            p @board
        end
    end
end

game = Game.new
game.startGame