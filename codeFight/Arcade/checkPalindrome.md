## Given the string, check if it is a palindrome.

### _Example_

For inputString = "aabaa", the output should be
checkPalindrome(inputString) = true;
<br><br>
For inputString = "abac", the output should be
checkPalindrome(inputString) = false;
<br><br>
For inputString = "a", the output should be
checkPalindrome(inputString) = true.

#### Input/Output

[time limit] 4000ms (rb)
<br><br>
[input] string inputString
<br><br>
A non-empty string consisting of lowercase characters.

#### Guaranteed constraints:
1 ≤ inputString.length ≤ 105.
<br><br>
[output] boolean
<br><br>
true if inputString is a palindrome, false otherwise.

```ruby
def checkPalindrome(inputString)
    return inputString === inputString.reverse
end
````