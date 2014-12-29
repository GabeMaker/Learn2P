# 3 - Leap Years After refactoring

puts 'what is the starting year?'
year = gets.chomp.to_i
puts 'what is the ending year?'
end_year = gets.chomp.to_i
puts "---"
puts "leap years between #{start_year} and #{end_year} are:"


while year < end_year
  if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
      puts year
    end
  end
  year += 1
end