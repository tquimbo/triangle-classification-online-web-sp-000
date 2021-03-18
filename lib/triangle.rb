class Triangle

    attr_accessor :equilateral, :isosceles, :scalene, :one, :two, :three
   
    def initialize(one,two,three)
      @one = one
      @two = two
      @three = three
    end

    def kind
      if @one < 0 || @two < 0 || @three < 0
        raise TriangleError
      elsif @one == 0 || @two == 0 || @three == 0
        raise TriangleError
      elsif @one >= (@two + @three)
        raise TriangleError
      elsif @two >= (@one + @three)
        raise TriangleError
      elsif @three >= (@one + @two)
        raise TriangleError
      elsif @one == @two && @one == @three
        return :equilateral
      elsif @two == @three || @one == @three || @one == @two
        return :isosceles
      elsif @one != @two && @one != @three
        return :scalene
      end
    end

    class TriangleError < StandardError
      def message
        "you must put valid parameters!"
      end
    end

end

