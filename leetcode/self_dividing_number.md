A self-dividing number is a number that is divisible by every digit it contains.

For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.

Also, a self-dividing number is not allowed to contain the digit zero.

Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.

Example 1:
````
Input:
left = 1, right = 22
Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
````

### My Solution
````javascript
var selfDividingNumbers = function(left, right) {
    var res = [];

    while (left <= right) {
        if (selfdividing(left) === true)
            res.push(left);
        left++;
    }
    return res;
};

function selfdividing(num) {
    var temp = num;
    var t = 0;
    while(temp >= 1) {
        t = temp % 10;

        if (num % t != 0 || t === 0) {
            return false;
        }
        temp /= 10;
    }
    return true;
}
````

### Optimal Solution
````javascript
var selfDividingNumbers = function(left, right) {
    var res = [];

 	for( var i = left; i <= right; i++ ){
 		var isDividingNum = true;
 		var item = i;
 		var digit = 0;
 		while(item){
 			digit = item % 10;
 			if(digit == 0 || (i % digit !=0) ){
 				isDividingNum = false;
 				break;
 			}
 			item = (item - digit)/10;
 		};

 		if(isDividingNum){
 			res.push(i);
 		}

 	}
 	return res;
};
````
