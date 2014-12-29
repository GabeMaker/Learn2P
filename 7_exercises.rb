# 3 - Leap Years After refactoring

puts 'what is the starting year?'
start_year = gets.chomp.to_i
puts 'what is the ending year?'
end_year = gets.chomp.to_i
puts "---"
puts "leap years between #{start_year} and #{end_year} are:"

(start_year..end_year).each do |year|
  next if year%4 != 0
  next if year%100 == 0 && year%400 != 0
  puts year
end

# next is an Enumerator method eg. 
# (0..5).each do |x|
# next if x%2 != 0
# puts x
# end
