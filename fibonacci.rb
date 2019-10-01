require 'benchmark'
num = 35

  def recursive_fib(num)
    
    if(num ==0 || num == 1)
      return num
    else
      return recursive_fib(num-1) + recursive_fib(num-2)
    end

  end 


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

Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

