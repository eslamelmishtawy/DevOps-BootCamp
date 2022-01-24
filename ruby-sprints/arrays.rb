arr = [1,2,3,4,5]
p arr.max
p arr.min
p arr.count
p arr.sum
holder = 1
arr.map{|value| holder = holder * value}
p holder

p arr.include?(5)

arr1 = [1,1,2,2,3,3,3]
p arr1.count(1)
arr2 = []
for i in arr1
    arr2.append([i, arr1.count(i)])
end
p arr2.uniq

reducerarray = [1,2,3]

p reducerarray.reduce(0) {|sum,n| sum + n}
sum = 0
reducerarray.each do |i| 
    sum = sum + i
end
p sum

array_with_two_elements = Array.new(2)
p array_with_two_elements
first_array_to_add = [1,2,3,5]
second_array_to_add = [10,2,3,5]
array_with_two_elements[0] = first_array_to_add
p array_with_two_elements
array_with_two_elements[1] = (second_array_to_add)
p array_with_two_elements

max_odd_array = [5,12,6,9,12]
max_odd = max_odd_array[0]
max_odd_array.each do |i|
    if i % 2 != 0
        max_odd = i 
    end
end
p max_odd

array_sum_without_17_more = [5,86,12,17,14,3]
sum = 0
array_sum_without_17_more.each do |i|
    if i < 17
        sum += i
    end
end
p sum

array_identical = [1,1,1,1,1]
p array_identical.uniq.size <= 1


