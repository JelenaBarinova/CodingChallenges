=begin
Given some text lines in one fil or string, each line is separated by ‘\n’ character. 
Print the last K lines. 
If number of lines is less than K, then print all lines.
=end
require_relative "../Algorithms/DataStructures/Queue"
def printLastLines (stream, k)
    queue = Queue.new()
    while (line = stream.gets)
        if queue.size() >= k then queue.dequeue() end
        queue.enqueue(line)
    end
    res = ""
    queue.iterate { |l| res = res + l}
    return res
end