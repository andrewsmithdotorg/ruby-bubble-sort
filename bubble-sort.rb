def bubble_sort (array)

    def sort_cycle(array)
        sorted_a_pair = false
        
        array.each_with_index do |num, index|
            hold = nil
            if (num <=> array[index+1]) == 1
                hold = array[index]
                array[index] = array[index+1]
                array[index+1] = hold
                sorted_a_pair = true
            end
        end

        if sorted_a_pair == true
            sort_cycle(array)
        end

    end
    sort_cycle(array)
    array
end

puts bubble_sort([4,3,2,8,43,13,132,12,5])