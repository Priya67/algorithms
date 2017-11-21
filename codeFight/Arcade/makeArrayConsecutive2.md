def makeArrayConsecutive2(statues)
    min = statues.min
    max = statues.max
    
    count = 0
    (min...max).each do |i|
        if !statues.include?(i)
            count += 1
        end
    end
    count
end
