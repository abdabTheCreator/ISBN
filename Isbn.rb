#!/usr/bin/ruby -w


isbn = [9,7,8,0,1,4,3,0,0,7,2,3]
#! Multiply every other index by 3 
multiplied_array = isbn.map.with_index{|x,i| i % 2 == 0 ? x : x * 3 } 

#! calculate the sum 
sum_of_numbers = multiplied_array.inject(0, :+)

def set_last_digit(num)
    mod = num % 10
    digit = 10 - mod
    if digit == 10
        digit = 0
    end 
    return digit
end

isbn << set_last_digit(sum_of_numbers)

complete_isbn = isbn.inject{|n, x| n * 10 + x}
print complete_isbn
   
