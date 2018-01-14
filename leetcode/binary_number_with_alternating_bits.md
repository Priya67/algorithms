Given a positive integer, check whether it has alternating bits: namely, if two adjacent bits will always have different values.

Example 1:
````
Input: 5
Output: True
Explanation:
The binary representation of 5 is: 101
````

Example 2:
````
Input: 7
Output: False
Explanation:
The binary representation of 7 is: 111.
````

Example 3:
````
Input: 10
Output: True
Explanation:
The binary representation of 10 is: 1010.
````
### Optimal Solution
```javascript
var hasAlternatingBits = function(n) {
    var str = n.toString(2);
    var flag;
    var tmp=str[0];
    for(var i=1;i<str.length;i++) {
        flag = tmp^str[i];
        if(flag == 0) {
            return false;
        }
        tmp = str[i];
    }
    return true;  
};
```
### Another Optimal Solution
```javascript
var hasAlternatingBits = function(n) {
    let ad = 2;
    while(n > 0) {
        if (ad === n%2) return false;
        ad = n%2;
        n = Math.floor(n/2);
    }
    return true;
};
```

### My Solution
```javascript
var hasAlternatingBits = function(n) {
    var binary_form = (n >>> 0).toString(2);

    for(var i = 0; i < binary_form.length-1; i++) {
        if(binary_form.charAt(i) === binary_form.charAt(i+1))
            return false;
    }
    return true;
};
```
