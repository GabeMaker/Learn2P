# demo of TMTOWTDI

def do_it_twice(&block)
  block.call
  block.call
end

do_it_twice do
  puts 'some string'
end


def do_it_twicey
  yield
  yield
end

do_it_twicey do
  puts 'some string'
end