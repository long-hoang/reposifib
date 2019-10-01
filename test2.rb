  def recursive_fib(num)
    
    if(num ==0 || num == 1)
      return num
    else
      return recursive_fib(num-1) + recursive_fib(num-2)
    end

  end 



puts recursive_fib(35)