def bubble_sort (array)
    array.each_with_index do |num, index|
        hold = nil
        if (num <=> array[index+1]) == 1
            hold = array[index]
            array[index] = array[index+1]
            array[index+1] = hold
        end
    end
    puts array
end

bubble_sort([4,3,2,8,43,13,132,12,5])