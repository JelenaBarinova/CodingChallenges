def findK (array)
    k = 0
    model = array[0]
    for i in 1 .. array.size - 1
        if model >= array[i] + k then
            corr = (model - (array[i] + k)) / 2 + 1
            k += corr
            model -= corr
            model += 1
        else
            if model < array[i] - k then
                model = array[i] - k
            else
                model += 1
            end
        end
    end
    return k
end