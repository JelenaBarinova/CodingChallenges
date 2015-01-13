=begin
Given a string ‘str’.
Check if it can be constructed by taking a substring of it 
and appending multiple copies of the substring together
=end
def isStringOfSubstring (str)
    if str.empty? then return false end
    
    prefix = str[0]
    n = str.length
    i = 1

    while i < n
        while str[i] != prefix[0]
            prefix << str[i]
            i += 1
        end
        m = prefix.length
        if 2 * m > n then return false end
    
        #possible prefix repetition
        k = 0
        while str[i .. i + m - 1] == prefix and i < n
            k += 1
            i += m
        end

        if i < n    
            prefix << prefix * k << str[i]
            i += 1 
        elsif k > 0 then 
            return true 
        end 
    end
    return false
end
