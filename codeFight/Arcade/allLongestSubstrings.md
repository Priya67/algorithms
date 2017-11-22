## Given an array of strings, return another array containing all of its longest strings.

## _Example_

For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

#### Input/Output

[time limit] 4000ms (rb)
[input] array.string inputArray

A non-empty array.

#### Guaranteed constraints:
1 ≤ inputArray.length ≤ 10,
1 ≤ inputArray[i].length ≤ 10.

[output] array.string

Array of the longest strings, stored in the same order as in the inputArray.

```ruby
def allLongestStrings(inputArray)
    max = 0
    ans = []
    
    (0...inputArray.length).each do |i|
        if inputArray[i].length > max
            max = inputArray[i].length
        end
    end
    
    (0...inputArray.length).each do |i|
        if inputArray[i].length === max
            ans.push(inputArray[i])
        end
    end
    ans
end
````