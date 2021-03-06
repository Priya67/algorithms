## Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

### _Example_

For sequence = [1, 3, 2, 1], the output should be
almostIncreasingSequence(sequence) = false;

There is no one element in this array that can be removed in order to get a strictly increasing sequence.

For sequence = [1, 3, 2], the output should be
almostIncreasingSequence(sequence) = true.

You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

#### Input/Output

[time limit] 4000ms (rb)
[input] array.integer sequence

#### Guaranteed constraints:
2 ≤ sequence.length ≤ 105,
-105 ≤ sequence[i] ≤ 105.

[output] boolean

Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.

```ruby
def almostIncreasingSequence(sequence)
    return true if sequence.length <= 1
    i = 0
    
    while i < sequence.length-1
        if sequence[i] >= sequence[i+1]
            puts "I am here with #{i}"
            assume1 = sequence.dup
            assume2 = sequence.dup
            
            assume1.delete_at(i)
            assume2.delete_at(i+1)
            
            if (assume1 == assume1.uniq.sort || assume2 == assume2.uniq.sort)
                return true
            else
                return false
            end
        else
            i += 1
        end
    end
    true
end
````