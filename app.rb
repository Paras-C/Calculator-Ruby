val1=0
val2=0
operand = ""
m_or_i = ""

def bmi_calc
  weight = 0
  height = 0

  puts "Metric or Imperial?"
  m_or_i = gets.chomp

  case m_or_i
    when "metric"
      puts "Please Enter Weight In KG"
      weight = gets.chomp
      puts "Please Enter Height In Metres"
      height = gets.chomp
      puts weight.to_f/(height.to_f**2)
    when "imperial"
      puts "Please Enter Weight In Pounds"
      weight = gets.chomp
      puts "Please Enter Height In Inches"
      height = gets.chomp
      puts (weight.to_f*703)/(height.to_f**2)
    else
      puts "Invalid Input"
  end    
      
end

while true do

  puts "Please Enter your Choice +, -, *, /, ^, sqrt, bmi, trip"
  operand = gets.chomp

if operand != "bmi" && operand != "trip"
  puts "Please enter your first Number"
  val1 = gets.chomp

  if operand != "sqrt"
    puts "Please enter your second Number"
    val2 = gets.chomp
  end  
end

  case operand
    when "+"
      puts val1.to_f + val2.to_f 
    when "-"
      puts val1.to_f - val2.to_f 
    when "*"
      puts val1.to_f * val2.to_f 
    when "/"
      puts val1.to_f / val2.to_f 
    when "^"
      puts val1.to_f ** val2.to_f
    when "sqrt"
      puts Math.sqrt(val1.to_f)
    when "bmi"
      bmi_calc
    when "trip"
      trip_calc
  end
    
end



#Trip Calc

# def trip_calc
#   print "distance: "
#   distance = gets.to_f
#   print "mpg: "
#   mpg = gets.to_f
#   print "fuel price per gallon: "
#   cost = gets.to_f
#   print "speed: "
#   speed = gets.to_f
#   mpg = mpg_utility(speed, mpg)
#   puts "It will take you #{distance/speed} hours at a cost of $#{(distance/mpg)*cost}"
#   gets
# end