a = 1
b = 3
c = 5
p b - a == c - b
p c - a <=1 || b - a <=1

x = 19
b = 99

x1 = x % 10
x2 = x/10
b1 = b % 10
b2 = b / 10

p x1 == b1 || x2 == b2 || x1 == b2 || x2 == b1  

number1 = 55
number2 = 22

p number1 == 11 || number2 == 11 || number1 + number2 == 11 || number1 - number2 == 11

string1 = "eslam"
string2 = "hossam"

p string1[0] != string2[0] && string1[string1.size-1] != string2[string2.size-1] &&  string1.index("x") == nil && string2.index("x") == nil 

string3 = "eslam"
p (string3=~/[aoeiuy]/) != nil

loop do
    puts "enter score"
    k = gets.chomp
    k = k.to_i
    break if k == -1
    if k >= 0 || k <=49
        p "fail" 
    elsif k >=50 || k <=60
        p "pass"
    elsif k > 60 || k <=70
        p "good"
    elsif k >70 || k <= 80
        p "very good"
    elsif k > 80 || k <=90
        p "excellent"
    elsif k > 90 || k <=100
        p "incredible"
    end

   
end