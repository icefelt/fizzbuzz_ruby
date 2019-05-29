# fizzbuzz_ruby

# Fizzbuzz Test
# "Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the 
# number and for the multiples of five print “Buzz”. For 
# numbers which are multiples of both three and five print “FizzBuzz”."

puts('Lets play fizzbuzz')
fizz_buzz =
    (1..100).map do |i|
        case
        when i % 15 == 0 then "FizzBuzz"
        when i % 3 == 0 then "Fizz"
        when i % 5 == 0 then "Buzz"
        else i
        end
    end
puts fizz_buzz