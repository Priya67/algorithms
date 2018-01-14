Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.

The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.

Example 1:
````
Input: "UD"
Output: true
````
Example 2:
````
Input: "LL"
Output: false
````

### Optimal Solution
```javascript
var judgeCircle = function(moves) {
    var length=moves.length;
    var movesArr=[];
    var r=0;
    var d=0;
    var u=0;
    var l=0;
    movesArr=moves.split("",length);
    for(var i=0;i<length;i++){
        if(movesArr[i]==="R"){
             r++;
        }
        if(movesArr[i]==="L"){
             l++;
        }
        if(movesArr[i]==="U"){
             u++;
        }
        if(movesArr[i]==="D"){
             d++;
        }
    }
    return r===l&&u===d
};
```
### My Solution
```javascript
var judgeCircle = function(moves) {
    var x = 0;
    var y = 0;

    var len = moves.length;

    for(var i = 0; i < len; i++) {
        if(moves.charAt(i) === 'L') {
            x -= 1;    
        } else if(moves.charAt(i) === 'D') {
            y -= 1;    
        } else if(moves.charAt(i) === 'U') {
            y += 1;    
        } else {
            x += 1;    
        }    
    }
    if ( x === 0 && y === 0) {
        return true;
    }
    else {
        return false;
    }
};
```
