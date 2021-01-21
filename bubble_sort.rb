require 'pry'

def bubble_sort (arr)
    count_while = 0
    count_for = arr.length - 1

    while count_while < arr.length do
        swapped = false
        binding.pry

        count_for.times do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
            end
        end

        binding.pry

        count_for -= 1
        count_while += 1

        unless swapped
            break
        end
    end
    
    p arr
end
