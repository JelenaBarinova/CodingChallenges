def isSymmetry (array)
    
    if array.empty? then return false end
    points = Hash.new
    
    for i in 0 .. array.size - 1
        if !points.has_key?(array[i][1]) then
            points[array[i][1]] = [array[i][0]]
        else
            points[array[i][1]].push(array[i][0])
        end
    end
    
    key, value = points.first
    value = value.sort()
    
    line_of_symmetry = value[0] + ((value[value.size - 1] - value[0]) / 2.0).ceil.to_i

    points.each do |key, value|        
        n = value.size - 1
        value = value.sort()

        for j in 0 .. n / 2
            if value[j] != line_of_symmetry and line_of_symmetry != value[j] + ((value[n - j] - value[j]) / 2.0).ceil.to_i        
                return false
            end
        end
    end
    return true
end