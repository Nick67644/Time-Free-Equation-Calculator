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
  initializeF = 2 * $acceleration.to_i * $DeltaX.to_i
  squareF = $FinalI.to_i.pow(2)
  medF = initializeF.to_i + squareF.to_i
  finalizeF = Math.sqrt(medF.to_i)

  puts ("Final Velocity is " + finalizeF.to_s)

elsif ($verifyAcceleration and $verifyDeltax and $verifyFinalv) #O
  initializeO = 2 * $acceleration.to_i * $DeltaX.to_i
  squareO = $Finalv.to_i.pow(2)
  medO = initializeO.to_i - squareO.to_i
  finalizeO = -Math.sqrt(medO.to_i)

  puts ("Final Velocity is " + finalizeO.to_s)

elsif ($verifyAcceleration and $verifyFinali and $verifyFinalv) #X


elsif ($verifyDeltax and $verifyFinali and $verifyFinalv) #A

end