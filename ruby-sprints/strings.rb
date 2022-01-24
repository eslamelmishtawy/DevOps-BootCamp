text = "Hello Ruby World"
p text

### Remove Hello From The Text ###
text_without_hello = text.slice(6,text.size)
p text_without_hello

### Add Welcom to ####
text_with_welcome_to = "Welcome to " + text_without_hello
p text_with_welcome_to

### Replace world with name ###
text_with_welcome_to["World"] = "Eslam"
p text_with_welcome_to

### Put name between quotes ###
text_with_welcome_to[" Eslam"] = "\"Eslam\""
puts text_with_welcome_to

### Insert ,
text_with_welcome_to.insert(text_with_welcome_to.index("Eslam")-1, ',')
puts text_with_welcome_to

### Insert tab
text_with_welcome_to.insert(text_with_welcome_to.index(",")+1, "\t")
puts text_with_welcome_to

### Count number of the characters
p text_with_welcome_to.size

### Count number of spaces
p text_with_welcome_to.count(' ')

#### Replace spaces with -
text_replace_spaces = text_with_welcome_to.gsub(' ', '-')
puts text_replace_spaces