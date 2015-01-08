=begin

=end
def findK (arr, k)
    if arr.nil? then return nil end
    n = arr.size - 1
    
    fold = findAFold(arr, 0, n)
    if fold.nil? then return find(arr, k, 0 , n) end

    res = find(arr, k, 0, fold)
    if !res.nil? then 
        return res 
    else 
        return find(arr, k, fold + 1, n) 
    end
end

def find (arr, k, f, l)
    if l<f then return nil end
    m = f + (l - f) / 2

    if k > arr[m] then 
        return find(arr, k, m + 1, l)
    elsif k < arr[m] then 
        return find(arr, k, f, m - 1)
    else
        return m
    end 
end

def findAFold(arr, f, l)
    if l <= f then return nil end
    m = f + (l - f) / 2
    if arr[m] > arr[m + 1] then return m end
    if arr[m] < arr[m - 1] then return m - 1 end 
    if arr[m] <= arr [f] then 
        return findAFold(arr, f, m - 1)
    elsif arr[m] < arr [l] then 
        return findAFold(arr, m + 1, l) 
    end
end