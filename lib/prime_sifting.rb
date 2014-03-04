def prime_sifting(num)
  range = (2..num).to_a
  prime = 2
  i=2
  non_prime_arr = []

  while prime <= Math.sqrt(num)
    for i in 2..num 
      if prime * i <= num
        non_prime_arr << prime * i
      else
        break
      end
    end 
    prime +=1
  end

  print range - non_prime_arr
end

prime_sifting(200)
