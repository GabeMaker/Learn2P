# Example 1

class Array

  def each_even(&was_a_block_now_a_proc)              # defining a new method that takes a block
    is_even = true
    self.each do |object|                             # self refers to the array we call each_even on
      if is_even
        was_a_block_now_a_proc.call object
      end

      is_even = !is_even
    end
  end
end

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit|
  puts "I just love #{fruit} pies, don't you?"
end

[1,2,3,4,5].each_even do |odd_ball|
  puts "#{odd_ball} is not an even number"
end

puts ""
puts "------"
puts ""

# Example 2

def profile block_descrption, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_descrption}: #{duration}: seconds"
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end

profile 'using inject to find 500!' do
  a = (1..500).to_a
  result = a.inject { |m,n| m * n }
  puts result
end