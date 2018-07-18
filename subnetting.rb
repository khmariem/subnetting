

def subnet(network_configuration,ip_address,mask)

  network_configuration.sort!.reverse!
  current_ip = ip_adress
  #   TODO
  #   use regular expressions
  #   L=[current_ip[0,].to_i,current_ip[5,9].to_i,current_ip[10,14].to_i,current_ip[15,19].to_i]
  for i in 0..network_configuration.length - 1
    nb_bits = nearest_binary(network_configuration[i] + 2)
	#   TODO 
	#   determine the nb of bits necessary to cover the needs in ip addresses
	#   ind=conv(network_configuration[i]+2,256)
    #   TODO
    #   updates in the IP address	
	#   ind1=nearest_binary(ind)
	L[ind] = L[ind] + ind1**2 - 1
	puts "network number" + (i+1).to_s
	puts "first IP address: " + current_ip
	puts "last IP address: " + L[0].to_s + "." + L[1].to_s + "." + L[2].to_s + "." + L[3].to_s
	L[ind] += 1
	while L[ind] == 256 && ind != 0 then
	  L[ind] = 0
	  L[ind-1] += 1
	  ind -= 1
	end
	current_ip = L[0].to_s + "." + L[1].to_s + "." + L[2].to_s + "." + L[3].to_s # OPTIMIZE
  end
end



def conv(nb)
  #   TODO
end