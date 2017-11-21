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
