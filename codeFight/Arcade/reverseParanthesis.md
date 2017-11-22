## Reverse String with parathensis
You have a string s that consists of English letters, punctuation marks, whitespace characters, and brackets. It is guaranteed that the parentheses in s form a regular bracket sequence.

Your task is to reverse the strings contained in each pair of matching parentheses, starting from the innermost pair. The results string should not contain any parentheses.

## _Example_

For string s = "a(bc)de", the output should be
reverseParentheses(s) = "acbde".

#### Input/Output

[time limit] 4000ms (js)
[input] string s

A string consisting of English letters, punctuation marks, whitespace characters and brackets. It is guaranteed that parentheses form a regular bracket sequence.

#### Constraints:
5 ≤ s.length ≤ 55.

[output] string

```javaScript
function reverseParentheses(s) {
    while (s.includes('(')) {
        var innerStart = s.lastIndexOf('(');
        var innerEnd = s.indexOf(')', s.lastIndexOf('('));
        s = s.slice(0, innerStart) + reverse(s.slice(innerStart + 1, innerEnd)) + (innerEnd + 1 === s.length ? s.slice(innerEnd, -1) : s.slice(innerEnd + 1));
    }
    return s;
}

var reverse = (str) => str.split('').reverse().join('');

````