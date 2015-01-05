def SlidingWindow(array, d)
    min_queue = Array.new()
    max_queue = Array.new()

    for i in 0 .. d - 1
        while !max_queue.empty? and array[i] >= max_queue.first
            max_queue.shift()
        end
        while !max_queue.empty? and array[i] >= max_queue.last
            max_queue.pop()
        end
        max_queue.push(i)

        while !min_queue.empty? and array[i] <= min_queue.first
            min_queue.shift()
        end
        while !min_queue.empty? and array[i] <= min_queue.last
            min_queue.pop()
        end
        min_queue.push(i)
    end

    median = array[max_queue.first] - array[min_queue.first]

    for i in d .. array.size - 1
        while !max_queue.empty? and array[i] >= max_queue.first
            max_queue.shift()
        end
        while !max_queue.empty? and array[i] >= max_queue.last
            max_queue.pop()
        end
        while !max_queue.empty? and i - max_queue.first >= d
            max_queue.shift()
        end
        max_queue.push(i)

        while !min_queue.empty? and array[i] <= min_queue.first
            min_queue.shift()
        end
        while !min_queue.empty? and array[i] <= min_queue.last
            min_queue.pop()
        end
        while !min_queue.empty? and i - min_queue.first >= d
            min_queue.shift()
        end
        min_queue.push(i)

        median = [median, array[max_queue.first] - array[min_queue.first]].max
    end

    return median
end
