if zenabled()
{
var resultid = gj_result_id()

if(resultid==request[0]) //If we just recieved the local score
 {
    if gj_result_status()
    {} else
    {
     if gj_result_error() == "No item with that key could be found."
     {request[2] = gj_datastore_set_global("Zen_"+os_get_region(),"0");}
    }
 }
}

gj_result_clear()

