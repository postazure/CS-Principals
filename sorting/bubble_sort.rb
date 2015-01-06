#Bubble Sort
def b_sort(some_array)
	$loop_counter = 0
	loops = (some_array.length-1)

	loops.times do
		loops.times do |i|
			j = i+1

			if some_array[i] > some_array[j]
				some_array[i], some_array[j] = some_array[j], some_array[i]
			end
			puts "#{some_array}"
			$loop_counter += 1
		end
	end

	some_array
end


starting_array = [6,23,97,1,7,213]
puts "#{starting_array} - Start"
puts
ending_array = b_sort(starting_array)
puts
puts "#{ending_array} - End"
puts "loops: #{$loop_counter}"
