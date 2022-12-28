puts "Quick Time-Free Equation calculator- Programmed in Ruby"
sleep 0.25
puts "\n⚠️ CLICK ENTER IF YOU DO NOT HAVE A NUMBER!"
sleep 0.25


puts "Enter Final Velocity: "

def FinalV()
  $Finalv = gets.chomp()
  $verifyFinalv = Integer($Finalv) rescue false
  if $verifyFinalv
  elsif $Finalv.empty?
    puts "You do not have Final Velocity \n"
  else
    puts "Invalid - Enter valid number \n"
    puts "Enter Final Velocity: "
    FinalV()
  end
end
FinalV()


puts "Enter Initial Velocity: "

def FinalI()
  $FinalI = gets.chomp()
  $verifyFinali = Integer($FinalI) rescue false
  if $verifyFinali
  elsif $FinalI.empty?
    puts "You do not have Initial Velocity \n"
  elsif $FinalI < 0
    puts "Invalid - Enter valid number \n"
    puts "Enter Initial Velocity: "
  else
    puts "Invalid - Enter valid number \n"
    puts "Enter Initial Velocity: "
    FinalI()
  end
end
FinalI()


puts "Enter a Δx: "

def DeltaX()
  $DeltaX = gets.chomp()
  $verifyDeltax= Integer($DeltaX) rescue false
  if $verifyDeltax
  elsif $DeltaX.empty?
    puts "You do not have Δx \n"
  else
    puts "Invalid - Enter valid number \n"
    puts "Enter Δx: "
    DeltaX()
  end
end
DeltaX()


puts "Enter a Acceleration: "

def acceleration()
  $acceleration = gets.chomp()
  $verifyAcceleration= Integer($acceleration) rescue false
  if $verifyAcceleration
  elsif $acceleration.empty?
    puts "You do not have Acceleration \n"
  else
    puts "Invalid - Enter valid number \n"
    puts "Enter Acceleration "
    acceleration()
  end
end
acceleration()

if ($verifyAcceleration and $verifyDeltax and $verifyFinali) #F
  initialize = 2 * $acceleration.to_i * $DeltaX.to_i
  square = $FinalI.to_i.pow(2)
  med = initialize.to_i / square.to_i
  finalize = Math.sqrt(med.to_i)

  puts ("Final Velocity is " + finalize.to_s)

elsif ($verifyAcceleration and $verifyDeltax and $verifyFinalv) #O

elsif ($verifyAcceleration and $verifyFinali and $verifyFinalv) #X

elsif ($verifyDeltax and $verifyFinali and $verifyFinalv) #A

end