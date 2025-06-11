def merge_sort(arr)
  return arr if arr.length == 1

  mid = arr.length/2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  merge(left,right)
end

def merge(left,right)
  l_index = 0
  r_index = 0
  combined = []

  until l_index == left.length && r_index == right.length
    if l_index == left.length
      combined << right[r_index]
      r_index += 1
    elsif r_index == right.length
      combined << left[l_index]
      l_index += 1
    elsif left[l_index] < right[r_index]
      combined << left[l_index]
      l_index += 1
    else
      combined << right[r_index]
      r_index += 1
    end
  end

  combined
end