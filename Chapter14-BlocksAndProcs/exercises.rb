# Grandfather clock

def g_clock &block
  hour = Time.new.hour
  hour = 
  if hour > 12
    hour = hour % 12
  end
  if hour == 0
    hour = hour + 12
  end
  hour.times do
    block.call
  end

end

# g_clock do
#   puts 'DONG!'
# end

g_clock { `say 'DING-DONG!'`}