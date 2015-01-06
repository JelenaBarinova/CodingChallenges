def findK (array, k)
    if k > array.size - 1 then return nil end

    array = QuickSort(array)
    k = array.size - k #return all elements starting from k
    res = Array.new()

    for i in k .. array.size - 1
        res << array[i]
    end
    return res
end

def QuickSort (array)
    if array.empty? then return nil end
    return sort(array, 0, array.size - 1)
end
def sort (array, l, h)
    if h <= l then return array end
    mid = partition(array, l, h)
    sort(array, l, mid - 1)
    sort(array, mid + 1, h)
end

def partition (array, l, h)
    partition = array[l]
    partition_i = l

    while h >= l
        if array[l] <= partition then
            l += 1
        elsif array[h] > partition
            h -= 1
        else
            switch(array, l, h)
            l += 1
            h -= 1
        end
    end
    switch(array, h, partition_i)
    return h
end
def switch (array, i, j)
    tmp = array[i]
    array[i] = array[j]
    array[j] = tmp
end