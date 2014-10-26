# names = IO.readlines('Tema/wordlist2.txt')
names = IO.readlines('Tema/wordlist2.txt')

# for x in 0...names.length
# 	for y in x+1...names.length
# 		if names[x].length > names[y].length
# 			aux = names[x]
# 			names[x]=names[y]
# 			names[y]= aux
# 		elsif names[x].length==names[y].length
# 			if names[x]>names[y]
# 				aux = names[x]
# 				names[x]=names[y]
# 				names[y]= aux
# 			end
# 		end
# 	end
# end
# puts names
# File.open('Tema/wordlist_sortat.txt', 'w') do |f| f.puts "#{names}"
# end

neordonat = true
while neordonat do
    neordonat = false
    0.upto(names.length-2) do |i|
    	if names[i].length > names[i+1].length
      		names[i], names[i+1] = names[i+1], names[i] # swap values
        	neordonat = true
      	elsif names[i].length == names[i+1].length
      		if names[i]>names[i+1]
        		names[i], names[i+1] = names[i+1], names[i] # swap values
        		neordonat = true
        	end
      	end
    end    
end
puts names
File.open("Tema/wordlist_sortat.txt", 'w') {|f| f.write(names) }