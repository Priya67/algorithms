```javascript
###Optimal Solution

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

###My Solution

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
