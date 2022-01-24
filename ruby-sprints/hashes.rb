Employees = {
    "10" => {name:"Ahmed",salary:1000},
    "21"=>{name:"Mohamed",salary:2000},
    "113"=>{name:"Mahmoud",salary:5000},
    "4"=>{name:"Yassin",salary:3000},
    "52"=>{name:"Taha",salary:4000},
    "102"=>{name:"Khadija",salary:nil},
    "64"=>{name:"Sara",salary:5000},
    "37"=>{name:"Nadine",salary:5000},
    "88"=>{name:"Doaa",salary:4000},
    "90"=>{name:"Iman",salary:4000},
    "103"=>{name:"Khadija",salary:1000},
    "12"=>{name:"Kholod",salary:nil},
    "15"=>{name:"Said",salary:nil},
    "38"=>{name:"Nadine",salary:5000},
    "89"=>{name:"Doaa",salary:4000},
    "91"=>{name:"Iman",salary:4000},
    "104"=>{name:"Khadija",salary:1000},
    "17"=>{name:"Kholod",salary:nil},
    "14"=>{name:"Said",salary:nil}
}
Employees.values.each do |i|
    p i[:name]
end
p Employees.keys

highest_salary = Employees.first[1][:salary]
arr = []
Employees.each do |i|
    arr.append i[1][:salary]
end

counter = 0
arr_index = []
arr.select {|i| 
    if i == arr.compact.max
        arr_index.append(counter)
    end 
    counter = counter + 1
}

arr_index.each { |v| 
    p Employees.to_a[v]
}

counter = 0
arr_index = []
arr.select {|i| 
    if i == arr.compact.min
        arr_index.append(counter)
    end 
    counter = counter + 1
}

arr_index.each { |v| 
    p Employees.to_a[v]
}

average_salary = arr.compact.sum/arr.compact.size
p average_salary

p arr.compact

my_employee = {}
Employees.values.to_a.uniq.each { |i|    
    my_employee[Employees.invert[i]] = i
}
p my_employee

arr1 = [10,20,30,40,10,10,20]
p arr1.count(1)
arr2 = []
for i in arr1
    arr2.append([i, arr1.count(i)])
end
p arr2.uniq.to_h