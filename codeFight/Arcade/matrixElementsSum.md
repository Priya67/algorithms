def almostIncreasingSequence(sequence)
    return true if sequence.length <= 1
    i = 0
    
    while i < sequence.length-1
        if sequence[i] >= sequence[i+1]
            puts "I am here with #{i}"
            assume1 = sequence.dup
            assume2 = sequence.dup
            
            assume1.delete_at(i)
            assume2.delete_at(i+1)
            
            if (assume1 == assume1.uniq.sort || assume2 == assume2.uniq.sort)
                return true
            else
                return false
            end
        else
            i += 1
        end
    end
    true
end
