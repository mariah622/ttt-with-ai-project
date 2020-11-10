module Players
    class Human < Player
      def move(board)
        puts "Please enter number from 1-9:"
        gets.strip
      end
    end
  end 