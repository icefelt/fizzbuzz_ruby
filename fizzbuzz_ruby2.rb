# fizzbuzz_ruby

# Fizzbuzz Test
# "Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the 
# number and for the multiples of five print “Buzz”. For 
# numbers which are multiples of both three and five print “FizzBuzz”."

puts('Lets play fizzbuzz')
for i in (1..100)
    x = ''
    x += "Fizz" if (i % 3 == 0)
    x += "Buzz" if (i % 5 == 0)
    puts(x.empty? ? i : x)
end