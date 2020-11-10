class Board
    attr_accessor :cells

    def initialize
        reset!
    end

    def reset!
        @cells = Array.new(9, " ") 
    end 

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(user_input)
        @cells[(user_input.to_i - 1)]
    end
    
    def full?
        @cells.all?{|cell| cell != " "}
    end

    def turn_count
        @cells.count{|turn| turn != " "}
    end
    
    def taken?(index)
        self.position(index) != " "
    end
    
    def valid_move?(index)
        !taken?(index) && (index.to_i - 1).between?(0, 8)
    end
    
    def update(pos, player)
        self.cells[pos.to_i - 1] = player.token 
    end

end
    