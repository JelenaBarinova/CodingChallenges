require_relative '../Algorithms/Sorts/QuickSort'
def pythagoreanTriplet (array)

    array = QuickSort(array)
    res = Array.new()

    a = 0
    b = array.size - 2
    c = array.size - 1
    while c > 1      
        aa = array[a]**2 
        bb = array[b]**2 
        cc = array[c]**2 
        
        while aa  + bb != cc and b > a and b > 1
            if aa + bb > cc
                b -= 1
                bb = array[b]**2 
            else
                a += 1
                aa = array[a]**2 
            end 
        end
        if aa + bb == cc then
            res << [array[a], array[b], array[c]]
        end  
        c -= 1
        a = 0
        b = c - 1
    end
    return res
end