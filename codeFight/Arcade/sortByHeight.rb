def sortByHeight(a)
    withoutTree = []
    (0...a.length).each do |i|
        if a[i] != -1
            withoutTree.push(a[i])
        end
    end
    withoutTree.sort!
    
    pos = 0
        
    (0...a.length).each do |i|
        if a[i] != -1
            a[i] = withoutTree[pos]
            pos += 1
        end
    end
    a
end
