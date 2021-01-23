require 'pry'

def bubble_sort(arr)
  count_while = 0
  count_for = arr.length - 1

  while count_while < arr.length
    swapped = false

    count_for.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    count_for -= 1
    count_while += 1

    break unless swapped
  end
  arr
end

def bubble_sort_by(arr)
  count_while = 0
  count_for = arr.length - 1

  while count_while < arr.length
    swapped = false

    count_for.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    count_for -= 1
    count_while += 1

    break unless swapped
  end

  arr
end
