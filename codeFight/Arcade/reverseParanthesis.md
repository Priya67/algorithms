function reverseParentheses(s) {
    while (s.includes('(')) {
        var innerStart = s.lastIndexOf('(');
        var innerEnd = s.indexOf(')', s.lastIndexOf('('));
        s = s.slice(0, innerStart) + reverse(s.slice(innerStart + 1, innerEnd)) + (innerEnd + 1 === s.length ? s.slice(innerEnd, -1) : s.slice(innerEnd + 1));
    }
    return s;
}

var reverse = (str) => str.split('').reverse().join('');