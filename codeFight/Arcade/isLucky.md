## Given a ticket number n, determine if it's lucky or not.

Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

## _Example_

For n = 1230, the output should be
isLucky(n) = true;
<br><br>
For n = 239017, the output should be
isLucky(n) = false.

#### Input/Output

[time limit] 4000ms (rb)
[input] integer n

A ticket number represented as a positive integer with an even number of digits.

#### Guaranteed constraints:
10 ≤ n < 106.

[output] boolean

true if n is a lucky ticket number, false otherwise.

```ruby
def isLucky(n)
    sum1 = 0
    sum2 = 0
    
    len = n.to_s.length
    
    (1..len/2).each do |i|
        sum1 += n%10
        n = n / 10
    end
    
    ((len/2)+1..len).each do |j|
        sum2 += n%10
        n = n/10
    end
    
    if sum1 == sum2
        return true
    else
        return false
    end
end
````