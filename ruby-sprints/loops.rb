arr=[1,2,3,4,5,6,7,8,9,10]

for value in arr do
    p value
end

i = 0
while i < arr.length
    p arr[i]
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    p arr[counter]
    counter = counter+1
end

for value in arr do
    if value != 5 && value != 6
        p value
    end
end

i = 0
while i < arr.length
    if arr[i] != 5 && arr[i] != 6
        p arr[i]
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter] != 5 && arr[counter] != 6
        p arr[counter]
    end
    counter = counter+1
end


for value in arr do
    if value <6
        p value
    end
end

i = 0
while i < arr.length
    if arr[i] <6
        p arr[i]
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter] <6
        p arr[counter]
    end
    counter = counter+1
end

for value in arr do
    if value.even?
        p value
    end
end

i = 0
while i < arr.length
    if arr[i].even?
        p arr[i]
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter].even?
        p arr[counter]
    end
    counter = counter+1
end

for value in arr do
    if value.odd?
        p value
    end
end

i = 0
while i < arr.length
    if arr[i].odd?
        p arr[i]
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter].odd?
        p arr[counter]
    end
    counter = counter+1
end


for value in arr do
    if value > 1 && value < 10
        p value
    end
end

i = 0
while i < arr.length
    if arr[i] > 1 && arr[i] < 10
        p arr[i]
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter] > 1 && arr[counter] < 10 
        p arr[counter]
    end
    counter = counter+1
end

for value in arr do
    if value.odd?
        p "#{value} odd"
    elsif value.even?
        p "#{value} even"     
    end
end

i = 0
while i < arr.length
    if arr[i].odd?
        p "#{arr[i]} odd"
    elsif arr[i].even?
        p "#{arr[i]} even"   
    end
    i+=1
end

counter = 0 
loop do
    if counter > arr.size-1
        break
    end
    if arr[counter].odd?
        p "#{arr[counter]} odd"
    elsif arr[counter].even?
        p "#{arr[counter]} even"
    end
    counter = counter+1
end











