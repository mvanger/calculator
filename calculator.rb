def addition(a,b)
  return a+b
end

def subtraction(a,b)
  return a-b
end

def multiplication(a,b)
  return a*b
end

def division(a,b)
  return a/b
end

def exponent(a,b)
  return a ** b
end

def quadratic_equation1(a,b,c)
  return (-b + Math.sqrt((b**2) - (4*a*c)))/(2*a)
end

def quadratic_equation2(a,b,c)
  return (-b - Math.sqrt((b**2) - (4*a*c)))/(2*a)
end

def pythagorean(a,b)
  return Math.sqrt((a**2)+(b**2))
end

PI = 3.14159
def area_of_circle(r)
  return (PI*(r**2))
end

def volume_of_sphere(r)
  return ((4/3.0)*PI*(r**3))
end

puts "Which function would you like to perform?

add
subtract
multiply
divide
exponent
quadratic equation
length of hypotenuse
area of circle
volume of sphere"
function = gets.chomp

case function
  when "add"
    puts "What is the first number?"
    a = gets.chomp.to_f
    puts "What is the second number?"
    b = gets.chomp.to_f
    puts "The sum is " +addition(a,b).to_s + "."
  when "subtract"
    puts "What is the first number?"
    a = gets.chomp.to_f
    puts "What is the second number?"
    b = gets.chomp.to_f
    puts "The difference is " +subtraction(a,b).to_s + "."
  when "multiply"
    puts "What is the first number?"
    a = gets.chomp.to_f
    puts "What is the second number?"
    b = gets.chomp.to_f
    puts "The product is " +multiplication(a,b).to_s + "."
  when "divide"
    puts "What is the first number?"
    a = gets.chomp.to_f
    puts "What is the second number?"
    b = gets.chomp.to_f
      if b == 0
        puts "Cannot divide by zero."
      else
        puts "The quotient is " +division(a,b).to_s + "."
      end
  when "exponent"
    puts "What is the base?"
    a = gets.chomp.to_f
    puts "Raise to which power?"
    b = gets.chomp.to_f
    puts "The result is " + exponent(a,b).to_s + "."
  when "quadratic equation"
    puts "What is the first coefficient?"
    a = gets.chomp.to_f
    puts "What is the second coefficient?"
    b = gets.chomp.to_f
    puts "What is the third coefficient?"
    c = gets.chomp.to_f
      radicand = ((b**2) - (4*a*c))
        if radicand < 0
          puts "No real roots"
        elsif radicand == 0
          puts "The root is " + quadratic_equation1(a,b,c).to_s + "."
        elsif radicand > 0
          puts "One root is " +quadratic_equation1(a,b,c).to_s + ", and the other is " +quadratic_equation2(a,b,c).to_s + "."
        end
  when "length of hypotenuse"
    puts "What is the length of the first side?"
    a = gets.chomp.to_f
    puts "What is the length of the second side?"
    b = gets.chomp.to_f
      if a <= 0
        puts "Length of sides must be positive."
      elsif b <= 0
        puts "Length of sides must be positive."
      else
        puts "The hypotenuse length is " + pythagorean(a,b).to_s + "."
      end
  when "area of circle"
    puts "What is the radius?"
    r = gets.chomp.to_f
      if r <= 0
        puts "Radius must be positive."
      else
        puts "The area is " + area_of_circle(r).to_s + "."
      end
  when "volume of sphere"
    puts "What is the radius?"
    r = gets.chomp.to_f
      if r <= 0
        puts "Radius must be positive."
      else
        puts "The volume is " + volume_of_sphere(r).to_s + "."
      end
  else
    puts "Unrecognized function."
end