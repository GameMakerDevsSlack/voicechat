///Network Async for client
if async_load[? "type"] != network_type_data
exit



show("received data from server")
var get_network_size = async_load[? "size"]
show("Recieved packet, [" + string(get_network_size) + "] bytes")

rec_packets++;

