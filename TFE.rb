puts "Quick Time-Free Equation calculator- Programmed in Ruby"
sleep 0.25
puts "\n⚠️ CLICK ENTER IF YOU DO NOT HAVE A NUMBER!"
sleep 0.25

# start of script

puts "Enter Final Velocity: "

def FinalV()
  $Finalv = gets.chomp()
  $verifyFinalv = Float($Finalv) rescue false
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

# Pulls the Final Velocity

puts "Enter Initial Velocity: "

def FinalI()
  $FinalI = gets.chomp()
  $verifyFinali = Float($FinalI) rescue false
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

# Pulls the Initial Velocity

puts "Enter a Δx: "

def DeltaX()
  $DeltaX = gets.chomp()
  $verifyDeltax= Float($DeltaX) rescue false
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

# Pulls the Δx

puts "Enter a Acceleration: "

def acceleration()
  $acceleration = gets.chomp()
  $verifyAcceleration= Float($acceleration) rescue false
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

# Pulls the Acceleration

if ($verifyAcceleration and $verifyDeltax and $verifyFinali) # Allows you to find Final Velocity
  initializeF = 2 * $acceleration.to_f * $DeltaX.to_f
  squareF = $FinalI.to_f * $FinalI.to_f
  medF = initializeF.to_i + squareF.to_f
  finalizeF = Math.sqrt(medF.to_f)

  puts ("Final Velocity is " + finalizeF.to_s)

elsif ($verifyAcceleration and $verifyDeltax and $verifyFinalv) # Allows you to find Initial Velocity
  initializeO = 2 * $acceleration.to_f * $DeltaX.to_f
  squareO = $Finalv.to_f * $Finalv.to_f
  medO = (initializeO.to_f - squareO.to_f) / -1
  finalizeO = Math.sqrt(medO.to_f)

  puts ("Initial Velocity is " + finalizeO.to_s)

elsif ($verifyAcceleration and $verifyFinali and $verifyFinalv) # Allows you to find Δx
  initializeX = ($Finalv.to_f * $Finalv.to_f) - ($FinalI.to_f * $FinalI.to_f)
  medX = 2.0 * $acceleration.to_f
  finalizeX = initializeX.to_f / medX.to_f

  puts ("Δx is " + finalizeX.to_s)

elsif ($verifyDeltax and $verifyFinali and $verifyFinalv) # Allows you to find Acceleration
  initializeA = ($Finalv.to_f * $Finalv.to_f) - ($FinalI.to_f * $FinalI.to_f)
  medA = 2.0 * $DeltaX.to_f
  finalizeA = initializeA.to_f / medA.to_f

  puts ("Acceleration is " + finalizeA.to_s)

else
  sleep 0.25
  abort "Run again - Error invalid"
end

=begin
Test with these numbers:
    f = 2.5
    i = 2.9
    d = 0.39
    a = -3
=end