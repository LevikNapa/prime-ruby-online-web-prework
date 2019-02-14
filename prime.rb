# Add  code here!
# def prime?(n)
#   (2..n/2).none?{|i| n % i == 0}
# end

def prime?(number)
  start = 2
  primes = (start..number).to_a
  (start..number).each do |no|
    (start..no).each do |num|
      if ( no % num  == 0) && num != no
        primes.delete(no)
        break
      end
    end
  end
  primes
end
