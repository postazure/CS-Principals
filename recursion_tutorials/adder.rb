def adder n
  if n == 0
    0
  else
    n+adder(n-1)
  end
end




puts adder 2

puts "%"*15

puts counter 5
