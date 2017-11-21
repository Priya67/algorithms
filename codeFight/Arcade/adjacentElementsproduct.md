## Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

### _Example_

For inputArray = [3, 6, -2, -5, 7, 3], the output should be
adjacentElementsProduct(inputArray) = 21.

7 and 3 produce the largest product.

#### Input/Output

[time limit] 4000ms (js)
<br><br>
[input] array.integer inputArray

An array of integers containing at least two elements.

#### Guaranteed constraints:
2 ≤ inputArray.length ≤ 10,
<br>
-1000 ≤ inputArray[i] ≤ 1000.

[output] integer

The largest product of adjacent elements.

```javascript
function adjacentElementsProduct(inputArray) {
    if(inputArray.length <2) return inputArray;
    let max = inputArray[0] * inputArray[1];
    
    for( let i = 0; i < inputArray.length -1; i++) {
        if (inputArray[i] * inputArray[i+1] > max) {
            max = inputArray[i] * inputArray[i+1];
        }
    }
    return max;
}
````