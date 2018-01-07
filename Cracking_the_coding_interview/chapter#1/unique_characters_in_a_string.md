```javascript
    function uniqueCharacters(string str) {
      if (str.length > 256) {
        return false;
      }

      var boolean = [];
      for (var i = 0; i < 256; i++) {
        if (boolean[str[i].charCodeAt(0)] == true) {
          return false;
        }
        else {
          boolean[str[i].charCodeAt(0)] = true;
        }
      }
      return true;
    }
```

```cpp
#include<iostream>
using namespace std;

bool uniqueCharacters(string str) {
  if (str.length() > 256) {
    return false;
  }
  bool chars[256] = {0};
  for (int i = 0; i < str.length(); i++) {
    if(chars[int(str[i])] == true)
      return false;

    chars[int(str[i])] = true;
  }
  return true;
}
```
