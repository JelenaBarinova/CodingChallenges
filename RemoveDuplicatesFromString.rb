=begin
Remove all duplicates from the input string
=end
def removeDuplicates (str)
    if str.empty? then return nil end
    arr = str.chars.to_a
    map = Hash.new()

    i = 0
    while i < arr.size 
        if map.has_key?(arr[i]) then
            arr.delete_at(i)
        else
            map[arr[i]] = 1
            i += 1
        end
    end
    return arr.join.to_s
end
def removeDuplicatesInPlace (str)
    if str.empty? then return nil end
    arr = str.chars.to_a
    arr = arr.sort()

    i = 1
    while i < arr.size 
        if arr[i - 1] == arr[i] then
            arr.delete_at(i)
        else
            i += 1
        end
    end
    return arr.join.to_s
end