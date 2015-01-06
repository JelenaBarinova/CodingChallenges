def isLucky (n)
    if n % 2 == 0 then return false end
    p = n 
    s = 2
    while s < n 
        if p % s == 0 then
            #puts "n = " + n.to_s + " position = " + p.to_s + " step = " + s.to_s
            return false
        end    
        p = p - p / s
        s += 1
    end
    return true
end
