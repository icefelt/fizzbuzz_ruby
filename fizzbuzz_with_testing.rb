fizbuzz_with_testing

# I did a version of this using Ruby and RSpec. The code is printed at the bottom. The following 2 links show the process of writing this code, since TDD is all about process :)

# Video: http://bit.ly/FizzBuzz_TDD

# Slideshare: http://www.slideshare.net/jordanpoulton/intro-to-ruby-and-testdriven-development-fizzbuzz-kata-by-makers-academy

# And here, the code:

~/spec/fizzbuzz_spec.rb:

require 'fizzbuzz'

describe 'FizzBuzz' do
  context 'knows that a number is divisible by' do
    it '3' do
      expect(is_divisible_by_three?(3)).to be_true
    end
    it '5' do
      expect(is_divisible_by_five?(5)).to be_true
    end
    it '15' do
      expect(is_divisible_by_fifteen?(15)).to be_true
    end
  end


  context 'knows that a number is not divisible by' do
    it '3' do
      expect(is_divisible_by_three?(1)).not_to be_true
    end
    it '5' do
      expect(is_divisible_by_five?(1)).not_to be_true
    end
    it '15' do
      expect(is_divisible_by_fifteen?(1)).not_to be_true
    end
  end

  context 'while playing the game it returns' do
    it 'the number' do
      expect(fizzbuzz(1)).to eq 1
    end
    it 'Fizz' do
      expect(fizzbuzz(3)).to eq "Fizz"
    end
    it 'Buzz' do
      expect(fizzbuzz(5)).to eq "Buzz"
    end
    it "FizzBuzz" do
      expect(fizzbuzz(15)).to eq "FizzBuzz"
    end
  end
end
~/lib/fizzbuzz.rb

def fizzbuzz(number)
  return "FizzBuzz" if is_divisible_by_fifteen?(number)
  return "Buzz" if is_divisible_by_five?(number)
  return "Fizz" if is_divisible_by_three?(number)
  number
end

def is_divisible_by_three?(number)
  is_divisible_by(number, 3)
end

def is_divisible_by_five?(number)
  is_divisible_by(number, 5)
end

def is_divisible_by_fifteen?(number)
  is_divisible_by(number, 15)
end

def is_divisible_by(number, divisor)
  number % divisor == 0
end