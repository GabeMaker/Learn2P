# 3 - Leap Years

puts 'what is the starting year?'
start_year = gets.chomp.to_i
puts 'what is the ending year?'
end_year = gets.chomp.to_i
puts "---"
puts "leap years between #{start_year} and #{end_year} are:"


while start_year < end_year
  if start_year % 4 == 0
    if start_year % 100 != 0
      puts start_year
    elsif start_year % 400 == 0
      puts start_year
    end
  end
  start_year = start_year + 1
end