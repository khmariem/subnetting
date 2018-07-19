#subnetting: allocation of IPv4 addresses
#author Mariem Khlifi

def subnet(network_configuration,ip_address,mask)
  #  TODO
  #bunch of tests on the address (IPv4)
  
  network_configuration.sort!.reverse!
  
  current_ip = ip_adress
  L=current_ip.split(".")
  for i in 0..3 do
    L[i]=L[i].to_i
  end
  
  for i in 0..network_configuration.length - 1 do
    nb_bits = nearest_binary(network_configuration[i] + 2)
	ind,ind1=quo_rest_eight(nb_bits)
	L[ind] = L[ind] + 2**ind1 - 1
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



def nearest_binary(nb)
  #   TODO
end

def quo_rest_eight(nb)
  #   TODO
end