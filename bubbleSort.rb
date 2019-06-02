def bubble_sort(array)
    swapped = true
    while swapped
        swapped = false
        (array.length - 1).times do |n|
            if (array[n] <=> array[n + 1]) == 1
                array[n], array[n + 1] = array[n + 1], array[n]
                swapped = true
            end
        end
    end
    puts array.inspect
end

bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(array)
    swapped = true
    while swapped
        swapped = false
        (array.length - 1).times do |i|
            if yield(array[i], array[i + 1]) > 0
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
    end
    puts array.inspect
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end