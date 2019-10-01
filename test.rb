  def iterative_fib(num) 
    seq = []

    if num >= 0 
      seq.push(0)
    end
    
    if num >= 1 
      seq.push(1)
      counter = 2
      while counter < num+1
        seq[counter] = seq[counter-1] + seq[counter -2]
        counter = counter +1
      end
    end 

  return seq[num]

  end 


puts iterative_fib(35)