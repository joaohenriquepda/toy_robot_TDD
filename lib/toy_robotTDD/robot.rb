module ToyRobotTDD
  class NeedToBeInPlace < StandardError;
  end


  class Robot

    def place(x,y,facing)
      @x = x
      @y = y
      @facing = facing
      @placed = true
    end

    def report
      "#{@x},#{@y},#{@facing.to_s.upcase}"
    end

    def left
      raise NeedToBeInPlace.new unless @placed
    end

    def right
      raise NeedToBeInPlace.new unless @placed
    end

    def move
      raise NeedToBeInPlace.new unless @placed
      if @facing == :north
        @y += 1
      elsif @facing == :east
        @x += 1
      elsif @facing == :south
        @y -= 1
      elsif @facing == :west
        @x -= 1
      end
    end


  end
end
