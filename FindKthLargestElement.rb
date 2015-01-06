def findK (array, k)
    if k > array.size - 1 then return nil end

    k = array.size - k
    l = 0
    h = array.size - 1
    mid = partition(array, 0, array.size - 1)

    while mid > 1
        if k < mid then
            h = mid - 1
            mid = partition(array, l, h) 
        else k > mid
            l = mid + 1
            mid = partition(array, l, h) 
        end
        if k == mid then
            return array[mid]
        end
    end
end

def partition (array, l, h)
    partition = array[l]
    partition_i = l
    l = l + 1
    while  h >= l 
        if array[l] <= partition then
            l += 1
        elsif array[h] > partition then
            h -= 1
        else
            switch(array, l, h)
            l += 1
            h -= 1
        end
    end
    switch(array, partition_i, h)
    return h
end

def switch (array, i, j)
    tmp = array[i]
    array[i] = array[j]
    array[j] = tmp
end
