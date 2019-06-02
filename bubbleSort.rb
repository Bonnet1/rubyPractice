def bubbleSort(array)
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

bubbleSort([1, 2, 3, 13, 17, 4, 8, 12])