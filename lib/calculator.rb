class Calculator
  def add(n1, n2)
    n1 + n2
  end

  def multiply(n1, n2)
    n1 * n2
  end

  def PI
    Math::PI
  end

  def divide(n1, n2)
    if n2 == 0
      raise ZeroDivisionError
    else
      n1 / n2
    end
  end

  def boring
    nil    
  end
end