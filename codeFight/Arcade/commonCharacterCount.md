def commonCharacterCount(s1, s2)
    uniqueStr = s1.split("").uniq
    
    sum = 0
        puts uniqueStr
    uniqueStr.each do |c|
        if s2.count(c)!=0
            sum += [s1.count(c), s2.count(c)].min
        end
    end
    sum
end
