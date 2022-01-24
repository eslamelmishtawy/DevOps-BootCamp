symbol = :welcome_to_ruby
p (symbol.start_with?("wel")) || (symbol.start_with?("to")) || (symbol.start_with?("zzz"))
p (symbol.end_with?("by")) || (symbol.end_with?("zy"))
p :welcome_to_rubz
p symbol.to_s.gsub(/[^0-9A-Za-z]/,'').size
p symbol.upcase
p symbol.downcase
p symbol.to_s
p symbol.to_s.to_sym
p symbol.to_s.split('').map {|s| s.to_sym}