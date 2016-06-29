class String
  define_method(:beats?) do |other_choice|
    result = false
    choices = ['rock', 'paper', 'scissors']
    choice = choices[2]
    if ( self == choices[0] ) & ( other_choice == choices[2] )
      result = true
    elsif ( self == choices[0] ) & ( other_choice != choices[2] )
      result = false
    elsif ( self == choices[1] ) & ( other_choice == choices[0] )
      result = true
    elsif ( self == choices[1] ) & ( other_choice != choices[0] )
      result = false
    elsif ( self == choices[2] ) & ( other_choice == choices[1] )
      result = true
    elsif ( self == choices[2] ) & ( other_choice != choices[1] )
      result = false
    end
  end
end
puts "rock".beats?("scissors")
puts "rock".beats?("paper")
