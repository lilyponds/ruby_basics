def bubble_sort (input_array)
    number_of_times = input_array.length
    result_array = input_array
    counter = 0
    for counter in 0...number_of_times do
        i = 0
        p "counter = #{counter}"
        for i in 0...number_of_times-1 do 
            temp = result_array[i]
            temp_plus = result_array[i+1]
            if result_array[i] > result_array[i+1]
                 result_array[i] = temp_plus
                 result_array[i+1] = temp
                 p result_array
                 p "i=#{i}"
            end
            i += 1
        end
        counter += 1
    end
    result_array
end