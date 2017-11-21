def isLucky(n)
    sum1 = 0
    sum2 = 0
    
    len = n.to_s.length
    
    (1..len/2).each do |i|
        sum1 += n%10
        n = n / 10
    end
    
    ((len/2)+1..len).each do |j|
        sum2 += n%10
        n = n/10
    end
    
    if sum1 == sum2
        return true
    else
        return false
    end
end