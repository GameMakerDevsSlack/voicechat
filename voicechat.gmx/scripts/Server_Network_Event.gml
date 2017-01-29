show("Received network data")

//retrieve the info
var get_network_id = async_load[? "id"]
var get_network_type = async_load[? "type"]
var get_network_ip = async_load[? "ip"]
var get_network_port = async_load[? "port"]



switch get_network_type
    {
    //----------------//
    case network_type_connect:
        {
        show("//--------//")
        show("Client Connecting")
        show("//--------//")
        var get_socket = async_load[? "socket" ];
        show("[" + string(get_network_ip) + ":" + string(get_network_port) + "] ")
        ds_list_add(socket_list,get_socket)
        break
        }
    //----------------//
    case network_type_disconnect:
        {
        //remember to update script name as well
        show("//--------//")
        show("Client Disconnecting")
        show("//--------//")
        var get_socket = ds_map_find_value(async_load,"socket")
        var pos = ds_list_find_index(socket_list,get_socket)
        ds_list_delete(socket_list,pos)
        show("[" + string(get_network_ip) + ":" + string(get_network_port) + "]")
        break
        }
    //----------------//
    case network_type_data:
        {
        var get_network_size = async_load[? "size"]
        show("Recieved packet, [" + string(get_network_size) + "] bytes")
        
        //what is this
        var _buffer = async_load[? "buffer" ];
        //do something here
        break
        }
    //----------------//
    }
show("End Network")

//code by Natesky9
