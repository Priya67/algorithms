def shapeArea(n)
    return 0 if n == 0
    sum = 1
    (1...n).each do |i|
        sum += (4 * i)
    end
    sum
end