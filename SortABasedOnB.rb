=begin
Sort an array according to the order defined by another array
Given two arrays A1[] and A2[], sort A1 in such a way 
that the relative order among the elements will be same as 
those are in A2. For the elements not present in A2, 
append them at last in sorted order.

Input: A1[] = {2, 1, 2, 5, 7, 1, 9, 3, 6, 8, 8}
       A2[] = {2, 1, 8, 3}
Output: A1[] = {2, 2, 1, 1, 8, 8, 3, 5, 6, 7, 9}
The code should handle all cases like number of elements in A2[] 
may be more or less compared to A1[]. A2[] may have some elements 
which may not be there in A1[] and vice versa is also possible.
=end
def sortABasedOnB (a, b)
    map = Hash.new()
    for i in 0 .. a.size - 1
        if map.has_key?(a[i]) then
            map[a[i]] += 1
        else
            map[a[i]] = 1
        end
    end 
    j = 0
    res = Array.new()
    while j < b.size
        if map.has_key?(b[j]) then
            k = map.delete(b[j])
            while k > 0
                res << b[j]
                k -= 1
            end
        end
        j += 1
    end
    if map.length > 0 then
        res = res + map.keys.sort()
    end
    return res
end