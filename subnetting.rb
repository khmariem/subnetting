

def subnet(network_configuration,ip_address,mask)
	#sort the network_configuration
	network_configuration.sort!.reverse!
	current_ip=ip_adress
	#L=[current_ip[0,].to_i,current_ip[5,9].to_i,current_ip[10,14].to_i,current_ip[15,19].to_i]
	for i in 0..network_configuration.length-1
		nb_bits=nearest_binary(network_configuration[i]+2)
		#ind=conv(network_configuration[i]+2,256)
		#ind1=nearest_binary(ind)
		L[ind]=L[ind]+ind1
		puts "network number"+(i+1).to_s,"first IP address: "+current_ip,"last IP address: "+L[0].to_s+"."+L[1].to_s+"."+L[2].to_s+"."+L[3].to_s
		current_ip=L[0].to_s+"."+L[1].to_s+"."+L[2].to_s+"."+L[3].to_s
end



def conv(nb)

end